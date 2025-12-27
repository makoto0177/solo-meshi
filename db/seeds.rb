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
  Shop.find_or_create_by!(name: shop_data[:name], area: shop_data[:area]) do |shop|
    shop.category = shop_data[:category]
  end
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

user1 = User.find_by(email: "test@example.com")
user2 = User.find_by(email: "hanako@example.com")
user3 = User.find_by(email: "jiro@example.com")

shop_yakiniku = Shop.find_by(name: "一人焼肉 渋谷店")
shop_ramen = Shop.find_by(name: "ラーメン太郎")
shop_cafe = Shop.find_by(name: "カフェ・ド・ソロ")
shop_sushi = Shop.find_by(name: "寿司 一心")
shop_curry = Shop.find_by(name: "カレーハウス CoCo壱番屋")
shop_teishoku = Shop.find_by(name: "定食屋 まつや")
shop_italian = Shop.find_by(name: "イタリアン バール")
shop_chinese = Shop.find_by(name: "中華料理 龍門")
shop_soba = Shop.find_by(name: "そば処 やぶ")
shop_izakaya = Shop.find_by(name: "居酒屋 一人呑み")

Post.create!(
  shop: shop_yakiniku,
  user: user1,
  visited_at: 3.days.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "普通",
  comment: "一人でも全く気にならない雰囲気でした。肉の質も良く、値段も手頃。また来たいです。"
)

Post.create!(
  shop: shop_yakiniku,
  user: user2,
  visited_at: 1.week.ago,
  rating: 5.0,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "空いていた",
  comment: "カウンター席で一人焼肉を満喫。換気もしっかりしていて煙が気になりませんでした。"
)

Post.create!(
  shop: shop_yakiniku,
  user: user3,
  visited_at: 2.weeks.ago,
  rating: 4.0,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "にぎやか",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "週末の夜は混雑していました。予約をおすすめします。"
)

Post.create!(
  shop: shop_ramen,
  user: user2,
  visited_at: 5.days.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "深夜に訪問。濃厚なスープが最高でした。行列ができていましたが、回転が早く待ち時間は少なめ。"
)

Post.create!(
  shop: shop_ramen,
  user: user1,
  visited_at: 10.days.ago,
  rating: 3.5,
  solo_customer_level: "一人客とグループ客が混在",
  casual_level: "カジュアル",
  noise_level: "にぎやか",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "味は美味しいですが、ランチタイムはかなり混雑します。"
)

Post.create!(
  shop: shop_cafe,
  user: user1,
  visited_at: 4.days.ago,
  rating: 5.0,
  solo_customer_level: "一人客が多い",
  casual_level: "普通",
  noise_level: "静か",
  counter_seat: "なし",
  crowdedness_level: "空いていた",
  comment: "静かで落ち着いた雰囲気。読書や作業に最適です。コーヒーも美味しい。"
)

Post.create!(
  shop: shop_cafe,
  user: user3,
  visited_at: 1.week.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "普通",
  noise_level: "静か",
  counter_seat: "なし",
  crowdedness_level: "普通",
  comment: "Wi-Fiと電源があるので作業に便利。ケーキも美味しかったです。"
)

Post.create!(
  shop: shop_sushi,
  user: user3,
  visited_at: 2.days.ago,
  rating: 5.0,
  solo_customer_level: "一人客が多い",
  casual_level: "フォーマル",
  noise_level: "静か",
  counter_seat: "あり",
  crowdedness_level: "普通",
  comment: "カウンターで職人さんとの会話も楽しめました。ネタも新鮮で最高。"
)

Post.create!(
  shop: shop_sushi,
  user: user1,
  visited_at: 1.week.ago,
  rating: 4.5,
  solo_customer_level: "一人客とグループ客が混在",
  casual_level: "フォーマル",
  noise_level: "静か",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "ランチのにぎりがコスパ良し。予約推奨です。"
)

Post.create!(
  shop: shop_sushi,
  user: user2,
  visited_at: 2.weeks.ago,
  rating: 4.0,
  solo_customer_level: "一人客が多い",
  casual_level: "普通",
  noise_level: "静か",
  counter_seat: "あり",
  crowdedness_level: "空いていた",
  comment: "平日の夜は比較的空いていました。ゆっくり楽しめます。"
)

Post.create!(
  shop: shop_curry,
  user: user1,
  visited_at: 1.day.ago,
  rating: 3.5,
  solo_customer_level: "一人客とグループ客が混在",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "不明",
  crowdedness_level: "普通",
  comment: "安定の味。一人でも気軽に入れます。"
)

Post.create!(
  shop: shop_teishoku,
  user: user2,
  visited_at: 3.days.ago,
  rating: 4.0,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "ボリューム満点の定食。コスパ最高です。"
)

Post.create!(
  shop: shop_teishoku,
  user: user3,
  visited_at: 1.week.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "にぎやか",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "ランチタイムは行列必至。でも待つ価値あり。"
)

Post.create!(
  shop: shop_italian,
  user: user3,
  visited_at: 6.days.ago,
  rating: 4.5,
  solo_customer_level: "一人客とグループ客が混在",
  casual_level: "普通",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "普通",
  comment: "カウンター席で一人でもワインを楽しめました。パスタが絶品。"
)
Post.create!(
  shop: shop_chinese,
  user: user1,
  visited_at: 4.days.ago,
  rating: 4.0,
  solo_customer_level: "一人客とグループ客が混在",
  casual_level: "カジュアル",
  noise_level: "にぎやか",
  counter_seat: "なし",
  crowdedness_level: "混んでいた",
  comment: "本格的な中華料理。一品料理が豊富で一人でも楽しめます。"
)

Post.create!(
  shop: shop_soba,
  user: user1,
  visited_at: 2.days.ago,
  rating: 5.0,
  solo_customer_level: "一人客が多い",
  casual_level: "普通",
  noise_level: "静か",
  counter_seat: "あり",
  crowdedness_level: "空いていた",
  comment: "蕎麦の香りが素晴らしい。静かな店内で落ち着いて食事ができました。"
)

Post.create!(
  shop: shop_soba,
  user: user2,
  visited_at: 1.week.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "普通",
  noise_level: "静か",
  counter_seat: "あり",
  crowdedness_level: "普通",
  comment: "天ぷらそばが美味しかったです。また行きます。"
)

Post.create!(
  shop: shop_izakaya,
  user: user2,
  visited_at: 1.day.ago,
  rating: 4.5,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "普通",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "一人飲みに最高の環境。料理も美味しくて、ついつい長居してしまいました。"
)

Post.create!(
  shop: shop_izakaya,
  user: user3,
  visited_at: 5.days.ago,
  rating: 4.0,
  solo_customer_level: "一人客が多い",
  casual_level: "カジュアル",
  noise_level: "にぎやか",
  counter_seat: "あり",
  crowdedness_level: "混んでいた",
  comment: "カウンター席のみですが、それが逆に一人でも入りやすい。"
)
