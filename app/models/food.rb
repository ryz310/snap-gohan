class Food < ActiveRecord::Base
  belongs_to :group, class_name: :FoodGroup, foreign_key: :food_group_id
  
  has_many :foodstuffs, dependent: :destroy
  has_many :menus, through: :foodstuffs
  
  # number "00000" ~ "01000" は管理用データ
  # 管理用データで有効となっている栄養素名一覧を取得
  default_scope -> { where.not(number: "00000".."01000")
                    .select(:id, *Food.enable_columns) }

  # 栄養素名
  NUTRIENTS_ALL = [:energy, :energy_kj, :water, :protein, :protein_sum_of_amino_acid_residuse, :lipid, :triacylglycerol_equivalents, :carbohydrate, :ash, :sodium, :potassium, :calcium, :magnesium, :phosphorus, :iron, :zinc, :copper, :manganese, :iodine, :selenium, :chromium, :molybdenum, :retinol, :alpha_carotenes, :beta_carotenes, :beta_cryptoxanthin, :bata_carotene_equivalents, :retinol_activity_equivalents, :vitamind, :alpha_tocopherols, :beta_tocopherols, :gamma_tocopherols, :delta_tocopherols, :vitamink, :thiamin, :riboflavin, :niacin, :vitaminb6, :vitaminb12, :folate, :pantothenic_acid, :biotin, :ascorbic_acid, :saturated_fatty_acids, :monounsaturated_fatty_acids, :polyunsaturated_fatty_acids, :cholesterol, :soluble_dietary_fibers, :insoluble_dietary_fibers, :total_dietary_fibers, :salt_equivalents].freeze

  # 管理用データを取得
  def Food.setting
    Food.unscoped
      .where(number: "00000")
      .first
  end

  # 管理用データで有効となっている栄養素名一覧を取得
  def Food.nutrients
    if setting = Food.setting
      NUTRIENTS_ALL.select do |nutrient|
        setting.public_send(nutrient) != 0.0
      end
    else
      []
    end
  end

  # 管理用データで有効となっている栄養素名一覧を取得
  def Food.enable_columns
    [:food_group_id, :number, :classification, :subdivision, :name, :refuse, *Food.nutrients]
  end

  # 食品の「大分類」と「中分類/小分類/細分」をまとめて取得
  def full_name
    "#{self.classification} : #{self.subdivision}"  
  end
  
  # 廃棄率をパーセント表記
  def refuse_percentage
    (self.refuse * 100).round
  end
end
