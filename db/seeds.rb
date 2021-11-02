require 'faker'
puts "🌱 Seeding..."

potion_shop = Shop.create(name: 'Potions Emporium')
weapon_smith = Shop.create(name: 'Weapons')
armor_smith = Shop.create(name: 'Armor')
tools = Shop.create(name: 'Tools & Such')

#potions
Item.create(name: 'Healing Potion', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name:'Greater Strength', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Black Sap', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Lesser Strength', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Invisiblity', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Sleep', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Greater Speed', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
Item.create(name: 'Growth', category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)

# #weapons
10.times do
  Item.create(
    name: Faker::Games::DnD.melee_weapon, 
    category: 'weapon', 
    pounds: rand(1..10), 
    cost: rand(10..10000), 
    shop_id: weapon_smith.id, 
    desc: Faker::Lorem.sentence
  )
end

# # #armor
armor = ['Padded', 'Leather', 'Studded Leather', 'Hide', 'Chain Shirt', 'Scale Mail', 'Breastplate', 'Half plate', 'Ring Mail', 'Chain Mail', 'Splint', 'Plate', 'Shield']

armor.each do |a|
  Item.create(name: a, category: 'armor', pounds: rand(10..50), cost: rand(100..10000), shop_id: armor_smith.id, desc: Faker::Lorem.sentence)
end

puts "✅ Done seeding!"
