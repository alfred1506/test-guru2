# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = Category.create!([
  { title: 'Люди'},
  { title: 'Животные'}
  ])

tests = Test.create!([
  { title: 'Образование', level: 1, category_id: categories[0].id },
  { title: 'Здоровье', level: 2, category_id: categories[0].id },
  { title: 'Особенности' level: 1, category_id: categories[1].id },
  { title: 'Виды', level: 2, category_id: categories[1].id }
  ])

questions = Question.create!([
  { body:'Самое большое животное жившее на земле?', test_id: 2 },
  { body: 'способы укрепить эммунитет?', test_id: 1 },
  { body: 'Самое быстрое животное жившее на земле из современных?', test_id: 2 }
  ])

answers = Answer.create!([
  { body: 'Слон', result: true, question_id: 0 },
  { body: 'Дипладок', result: true, question_id: 0 },
  { body: 'Синий кит', result: true, question_id: 0 },
  { body: 'Брахиозавр', result: true, question_id: 0 }
  ])

users = User.create!([
  { first_name: 'Ivan'},
  { first_name: 'Peter'},
  { first_name: 'Sidor'}
  ])

UserConnectionTest.create([
  { user_id: user.id, test_id: tests[0].id },
  { user_id: user.id, test_id: tests[1].id },
  { user_id: user.id, test_id: tests[2].id },
  { user_id: user.id, test_id: tests[3].id }
  ])
