# rails db:seed
# (or created alongside the database with db:setup).

# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = ['test', 'asd']
users.each do |user|
  User.create({name: user})
end

groups = [
  ['Incomes','https://image.flaticon.com/icons/svg/3141/3141815.svg'],
  ['Outcomes','https://image.flaticon.com/icons/svg/3078/3078929.svg']
]

groups.each do |group|
  Group.create({name: group[0], icon: group[1]})
end
