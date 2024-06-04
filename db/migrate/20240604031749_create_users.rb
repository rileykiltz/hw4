# CreateUsers migration
class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:users)
      create_table :users do |t|
        t.string :username
        t.string :password
        t.string :first_name
        t.string :last_name
        t.string :email

        t.timestamps
      end
    end
  end
end
