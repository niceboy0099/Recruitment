class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
     # t.text :password
      t.string :firstname
      t.string :lastname
      t.string :contact
      t.text :localaddress
      t.text :permanentaddress

      t.timestamps
    end
  end
end
