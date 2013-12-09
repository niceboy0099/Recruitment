class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :technology
      t.text :description
      t.references :seeker
      t.timestamps
    end
  end
end
