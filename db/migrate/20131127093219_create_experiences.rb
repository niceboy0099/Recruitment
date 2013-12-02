class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :technology
      t.string :experience
      t.string :profile
      t.timestamps
    end
  end
end
