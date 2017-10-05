class Users < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, presence: true, unique: true
      t.string :password_digest
    end
  end
end