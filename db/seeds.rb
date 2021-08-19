require 'faker'

50.times do
  Student.create!({ 
    name: Faker::Name.name, 
    email: Faker::Internet.email, 
    company: Faker::Company.industry,
    course: Faker::Educator.subject,
    telephone_number: Faker::PhoneNumber.cell_phone_in_e164,
   })
end
 
levels_arr = ['Elementary', 'Beginner', 'Pre-Intermediate', 'Intermediate', 'Intermediate Plus', 'Advanced', 'Business']

(3.months.ago.to_date..Date.current).each do |date|
  rand(6).times do |i|
    d = Dashboard.create!(date: date, 
                      description: Faker::Educator.course_name,
                      type: Dashboard.types.keys.sample,
                      amount: Faker::Number.between(from: 10, to: 30)
    )

    puts "#{i + 1}. Created Dashboard: #{d.date}"
  end
end
levels = levels_arr.map do |level|
  l = Level.create!(name: level)
  puts "Created Level: #{l.name}"
  l
end
10.times do
  company = Company.create!(name: Faker::Company.industry)
  puts "Created Company: #{company.name}"
end
10.times do
  course = Course.create!(name: Faker::Educator.subject, level: levels.sample)
  puts "Created Course: #{course.name}"
end

u = User.create!(name: 'Juan', email: 'nada@nada.com', password: '123456', company: Company.first, role: 'admin')
u.courses << Course.first

u = User.create!(name: 'Jorge', email: 'jorge@nada.com', password: '123456', company: Company.first, role: 'user')
u.courses << Course.second

u = User.create!(name: 'Pepe', email: 'pepe@nada.com', password: '123456', company: Company.first, role: 'user')
u.courses << Course.last

AdminUser.create!(email: 'Bigboss@example.com', password: '123456', password_confirmation: '123456') 