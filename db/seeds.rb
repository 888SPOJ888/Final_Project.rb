require 'faker'

(3.months.ago.to_date..Date.current).each do |date|
    rand(6).times do
      Dashboard.create!(date: date, description: Faker::Educator.course_name,
          type: Dashboard.types.keys.sample, amount: Faker::Number.between(from: 10, to: 30))
    end
  end

  10.times do |i|
    Company.create(name: Faker::Company.industry)
  end

  10.times do |i|
    Course.create(name: Faker::Educator.subject)
  end

  # 10.times do |i|
  #   Level.create(name: Faker::Educator.level)
  # end

# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 