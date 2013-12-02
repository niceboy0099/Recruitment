class CreateOpeningConditions < ActiveRecord::Migration
  def change
    create_table :opening_conditions do |t|
      t.references :opening
      t.references :condition
        
      t.timestamps
    end
  end
end
