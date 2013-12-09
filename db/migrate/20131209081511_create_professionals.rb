class CreateProfessionals < ActiveRecord::Migration
  def change
    create_table :professionals do |t|
      t.string :company_name
      t.string :job_title
      t.string :worked_technology
      t.date :join_date
      t.date :left_date
      
      t.references :seeker
      
      t.timestamps
    end
  end
end
