# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create title: "Эвакуатор", logo: File.open(File.join(Rails.root, 'app/assets/images/services/evacuator.png'))
Category.create title: "Открывание дверей", logo: File.open(File.join(Rails.root, 'app/assets/images/services/door-open.png'))
Category.create title: "Ремонт шин", logo: File.open(File.join(Rails.root, 'app/assets/images/services/tyre.png'))
Category.create title: "Юрист", logo: File.open(File.join(Rails.root, 'app/assets/images/services/lawyer.png'))
Category.create title: "Аварийный комиссар", logo: File.open(File.join(Rails.root, 'app/assets/images/services/insurance.png'))
Category.create title: "Авто-страхование", logo: File.open(File.join(Rails.root, 'app/assets/images/services/tyre.png'))
Category.create title: "Аккум-сервис", logo: File.open(File.join(Rails.root, 'app/assets/images/services/acum-service.png'))
Category.create title: "Авторемонт", logo: File.open(File.join(Rails.root, 'app/assets/images/services/auto-repair.png'))
Category.create title: "ГАИ", logo: File.open(File.join(Rails.root, 'app/assets/images/services/gai.png'))
