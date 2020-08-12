# frozen_string_literal: true

Donor.create!(name: 'Alessandro', email: 'alessandro@alessandrostein.com')
User.create!(name: 'Alessandro', email: 'alessandro+admin@alessandrostein.com', password: 'admin123', role: :admin)
User.create!(name: 'Alessandro', email: 'alessandro+super@alessandrostein.com', password: 'super123', role: :superuser)
