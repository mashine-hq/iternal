# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin::Category.create title: "Эвакуатор", logo: File.open(File.join(Rails.root, 'app/assets/images/services/evacuator.png'))
Admin::Category.create title: "Открывание дверей", logo: File.open(File.join(Rails.root, 'app/assets/images/services/door-open.png'))
Admin::Category.create title: "Ремонт шин", logo: File.open(File.join(Rails.root, 'app/assets/images/services/tyre.png'))
Admin::Category.create title: "Юрист", logo: File.open(File.join(Rails.root, 'app/assets/images/services/lawyer.png'))
Admin::Category.create title: "Аварийный комиссар", logo: File.open(File.join(Rails.root, 'app/assets/images/services/insurance.png'))
Admin::Category.create title: "Авто-страхование", logo: File.open(File.join(Rails.root, 'app/assets/images/services/tyre.png'))
Admin::Category.create title: "Аккум-сервис", logo: File.open(File.join(Rails.root, 'app/assets/images/services/acum-service.png'))
Admin::Category.create title: "Авторемонт", logo: File.open(File.join(Rails.root, 'app/assets/images/services/auto-repair.png'))
Admin::Category.create title: "ГАИ", logo: File.open(File.join(Rails.root, 'app/assets/images/services/gai.png'))

Admin::Company.create title: 'KEY1', description: 'Lorem Ipsum Dolor', phone: ['0633778333', '0673459967', '0993422844'], category_id: 2
Admin::Company.create title: 'KEY2', description: 'Lorem Ipsum Dolor', phone: ['0633778333', '0673459967', '0993422844'], category_id: 2
Admin::Company.create title: 'KEY3', description: 'Lorem Ipsum Dolor', phone: ['0633778333', '0673459967', '0993422844'], category_id: 2