(4.months.ago.to_date..Date.current).each do |date|
    rand(6).times do
      Dashboard.create!(date: date, description: Faker::Educator.course_name,
          type: Dashboard.types.keys.sample, amount: Faker::Number.between(from: 10, to: 500))
    end
  end


#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 