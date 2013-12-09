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
      t.string :totalexperience
      t.string :currentCTC
      t.string :expectedCTC
      t.string :state
      t.timestamps
    end
  end
end
