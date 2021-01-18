# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Project.create(title:"Семья")
p.todos.create(text:"Купить молоко", isComplited: false)
p.todos.create(text:"Заменить масло до 15 января", isComplited: false)
p.todos.create(text:"Отправить email", isComplited: false)
p.todos.create(text:"Заплатить за квартиру", isComplited: true)
p.todos.create(text:"Отнести куртку в ателье", isComplited: true)

l = Project.create(title:"Работа")
l.todos.create(text:"Сделать тестовое задание", isComplited: false)
l.todos.create(text:"Отправить документы", isComplited: false)
l.todos.create(text:"Добавить функционал нотифая", isComplited: true)

