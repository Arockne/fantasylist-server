require 'faker'
puts "🌱 Seeding..."

potion_shop = Shop.create(name: 'Potions Emporium', specialization: 'Potion')
weapon_smith = Shop.create(name: 'Sacrificing Steel', specialization: 'Weapon')
armor_smith = Shop.create(name: 'Block & Anvil', specialization: 'Armor')
tools = Shop.create(name: 'Tools & Such', specialization: 'Tool')

#potions
potions = ['Healing Potion', 'Greater Strength', 'Black Sap', 'Lesser Strength', 'Invisiblity', 'Sleep', 'Greater Speed', 'Growth']

potions.each do |potion_name|
  Item.create(name: potion_name, category: 'potion', pounds: 1, cost: rand(1..50), shop_id: potion_shop.id, desc: Faker::Lorem.sentence)
end 

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

armor.each do |armor_name|
  Item.create(name: armor_name, category: 'armor', pounds: rand(10..50), cost: rand(100..10000), shop_id: armor_smith.id, desc: Faker::Lorem.sentence)
end

#tools
tool_names = ['Ladder', 'Hammer', 'Grappling Hook', 'Hourglass', 'Lock', 'Magnifying glass', 'Iron Pot', 'Shovel', 'Vial']

tool_names.each do |tool_name|
  Item.create(name: tool_name, category: 'tool', pounds: rand(1..5), cost: rand(1..25), shop_id: tools.id, desc: Faker::Lorem.sentence)
end

puts "✅ Done seeding!"
