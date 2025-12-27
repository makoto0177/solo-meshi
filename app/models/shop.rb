class Shop < ApplicationRecord
  has_many :posts, dependent: :destroy

  CATEGORIES = [
    "和食",
    "洋食",
    "イタリアン",
    "中華",
    "ラーメン",
    "そば・うどん",
    "寿司",
    "焼肉・焼鳥",
    "カレー",
    "定食屋",
    "牛丼・丼もの",
    "カフェ",
    "居酒屋",
    "ファストフード",
    "その他"
  ].freeze

  validates :name, presence: true, length: { maximum: 100 }, uniqueness: { scope: :area, case_sensitive: false }
  validates :area, presence: true, length: { maximum: 50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  def average_rating
    return 0 if posts.empty?
    (posts.average(:rating).to_f * 2).round / 2.0
  end

  def reviews_count
    posts.count
  end
end
