User.create!(email: "susie",
  username: "Susie",
  password: "password")

5.times { Cup.create!(user_id: 1, created_at: "2016-06-29 18:55:39.955234") }

7.times { Cup.create!(user_id: 1, created_at: "2016-06-28 18:55:39.955234") }
