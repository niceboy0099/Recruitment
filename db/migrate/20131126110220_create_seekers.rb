class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
 
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :contact
      t.string :gender
      t.date :birth
      t.text :localaddress
      t.text :permanentaddress
      t.timestamps
    end
  end
end
