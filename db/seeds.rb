Category.create(name: 'Radtour')
Category.create(name: 'Mountainbiketour')
Category.create(name: 'Radwandern')

pass = SecureRandom.hex(5)
admin = User.create email: 'admin@example.com',
                    password: pass,
                    password_confirmation: pass
admin.add_role :admin
puts "Admin password is #{pass}"

