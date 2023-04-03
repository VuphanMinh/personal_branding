# frozen_string_literal: true

puts '~> Create users'

User.destroy_all

User.create(email: "admin@gmail.com", password: '12345678')
