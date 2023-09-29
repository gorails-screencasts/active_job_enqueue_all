10.times do |n|
  Customer.create email: "cust_#{n}@example.com"
end

20.times do
  Order.create amount: rand(20_000).to_f, status: rand(2), customer: Customer.all.sample
end
