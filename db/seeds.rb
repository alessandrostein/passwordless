# frozen_string_literal: true

donor = User.new(name: 'Alessandro', email: 'alessandro@alessandrostein.com', role: :donor)
donor.save(validate: false)
admin = User.new(name: 'Alessandro', email: 'alessandro+admin@alessandrostein.com', password: 'admin123', role: :admin)
admin.save!
