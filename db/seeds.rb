shops_data = [
  { name: "仮店舗", area: "未設定", category: "その他" },
  { name: "一人焼肉 渋谷店", area: "渋谷", category: "焼肉・焼鳥" },
  { name: "ラーメン太郎", area: "新宿", category: "ラーメン" },
  { name: "カフェ・ド・ソロ", area: "表参道", category: "カフェ" },
  { name: "寿司 一心", area: "銀座", category: "寿司" },
  { name: "カレーハウス CoCo壱番屋", area: "池袋", category: "カレー" },
  { name: "定食屋 まつや", area: "品川", category: "定食屋" },
  { name: "イタリアン バール", area: "恵比寿", category: "イタリアン" },
  { name: "中華料理 龍門", area: "上野", category: "中華" },
  { name: "そば処 やぶ", area: "神保町", category: "そば・うどん" },
  { name: "居酒屋 一人呑み", area: "赤羽", category: "居酒屋" }
]

shops_data.each do |shop_data|
  Shop.create!(shop_data)
end

users = [
  { name: "テスト太郎", email: "test@example.com" },
  { name: "テスト花子", email: "hanako@example.com" },
  { name: "テスト次郎", email: "jiro@example.com" }
]

users.each do |user|
  User.find_or_create_by!(email: user[:email]) do |record|
    record.name = user[:name]
    record.password = "password"
  end
end
