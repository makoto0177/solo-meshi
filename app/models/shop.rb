class Shop < ApplicationRecord
  has_many :posts, dependent: :destroy
  
  validates :name, presence: true, length: { minimum: 1, maximum: 100 }
  validates :area, presence: true, length: { minimum: 1, maximum: 50 }
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  CATEGORIES = [
    '和食',
    '洋食',
    'イタリアン',
    '中華',
    'ラーメン',
    'そば・うどん',
    '寿司',
    '焼肉・焼鳥',
    'カレー',
    '定食屋',
    '牛丼・丼もの',
    'カフェ',
    '居酒屋',
    'ファストフード',
    'その他'
  ].freeze
end
