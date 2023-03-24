User.destroy_all

john = User.create!(
  first_name: 'John',
  last_name: 'Doe',
  email: 'john@gmail.com',
  password: 'secret'
)

Tree.destroy_all

Tree.create!(
  name: 'John’s apple tree',
  address: '20 rue des Capucins 69001 Lyon',
  description: 'This apple tree produces both sweet and sour apples. They will be perfect to cut a little hunger, or enjoy a juicy apple for the dessert.',
  price_per_year: 175,
  quantity_per_year: 5,
  fruit_type: 'Apple',
  user: john
)

Tree.create!(
  name: 'John’s apricot tree',
  address: Faker::Address.full_address,
  description: 'This apricot tree  is beautiful. They are very cute by him size and give a very good fruit for doing a amazing tarte.',
  price_per_year: 200,
  quantity_per_year: 8,
  fruit_type: 'Apricot',
  user: john
)
Tree.create!(
  name: 'John’s cherry tree',
  address: Faker::Address.full_address,
  description: 'This cherry tree  is beautiful. They are very cute by him size and give a very good fruit for doing a amazing cake.',
  price_per_year: 220,
  quantity_per_year: 10,
  fruit_type: 'Cherry',
  user: john
)

Tree.create!(
  name: 'John’s Chestnut tree',
  address: Faker::Address.full_address,
  description: "This Chestnut tree  is beautiful. But i don't know what is it !",
  price_per_year: 160,
  quantity_per_year: 3,
  fruit_type: 'Chestnut',
  user: john
)
