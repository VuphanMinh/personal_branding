class SeedingUsersInfo < ActiveRecord::Migration[6.1]
  def up
    User.create(email: "admin@gmail.com", password: '12345678')
  end
 
  def down
    User.delete_all
  end
end
