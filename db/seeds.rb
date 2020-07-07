# script to populate the database
# run on terminal before start the app, with >>> rake db:setup
# if already have db created >>> rake db:seed

# --- SETUP ---
groups = [
  ['Incomes','https://image.flaticon.com/icons/svg/3141/3141815.svg'],
  ['Outcomes','https://image.flaticon.com/icons/svg/3078/3078929.svg']
]

groups.each do |group|
  Group.create({
    name: group[0],
    icon: group[1]
  })
end

# --- MOCK DATA ---
users = ['asd', 'test']
users.each do |user|
  User.create({name: user})
end

trasactions_with_group = [
  ['new app', 3000, 1],
  ['test suit', 750, 1],
  ['laptop', 2500.90, 2],
  ['ticket', 650.30, 2],
]

trasactions_with_group.each do |transaction|
  User.first.transactions.build(
    name: transaction[0],
    amount: transaction[1],
    group_id: transaction[2]
  ).save
end

trasactions_without_group = [
  ['bitcoin', 777],
  ['ethereum', 333]
]

trasactions_without_group.each do |transaction|
  User.first.transactions.build(
    name: transaction[0],
    amount: transaction[1]
  ).save
end
