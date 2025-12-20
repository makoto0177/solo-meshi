class Post < ApplicationRecord
  belongs_to :shop
  belongs_to :user

  RATINGS = [
    1.0, 1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0
  ].freeze

  SOLO_CUSTOMER_LEVELS = [
    "一人客が多い",
    "一人客とグループ客が混在",
    "一人客が少ない"
  ].freeze

  CASUAL_LEVELS = [
    "カジュアル",
    "普通",
    "フォーマル"
  ].freeze

  NOISE_LEVELS = [
    "静か",
    "普通",
    "にぎやか"
  ].freeze

  COUNTER_SEATS = [
    "あり",
    "なし",
    "不明"
  ].freeze

  CROWDEDNESS_LEVELS = [
    "空いていた",
    "普通",
    "混んでいた"
  ].freeze

  validates :visited_at, presence: true

  validates :rating,
            presence: true,
            inclusion: { in: RATINGS }

  validates :solo_customer_level,
            presence: true,
            inclusion: { in: SOLO_CUSTOMER_LEVELS }

  validates :casual_level,
            presence: true,
            inclusion: { in: CASUAL_LEVELS }

  validates :noise_level,
            presence: true,
            inclusion: { in: NOISE_LEVELS }

  validates :counter_seat,
            presence: true,
            inclusion: { in: COUNTER_SEATS }

  validates :crowdedness_level,
            presence: true,
            inclusion: { in: CROWDEDNESS_LEVELS }

  validates :comment,
            length: { maximum: 1000 },
            allow_blank: true
end
