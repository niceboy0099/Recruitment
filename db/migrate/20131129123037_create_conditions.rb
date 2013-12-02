class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :title
      t.text :description
      t.references :opening

      t.timestamps
    end
  end
end
