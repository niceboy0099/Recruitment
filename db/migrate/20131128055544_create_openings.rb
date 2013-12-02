class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.string :title
      t.string :jtype
      t.text :description
      
      t.timestamps
    end
  end
end
