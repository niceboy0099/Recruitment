class CreateAcademics < ActiveRecord::Migration
  def change
    create_table :academics do |t|
      t.string :course
      t.string :percentage
      t.string :pass_year
      t.string :board
      t.string :stream
      t.text :institute
      t.string :place
      t.string :medium
      
      t.references :seeker

      t.timestamps
    end
  end
end
