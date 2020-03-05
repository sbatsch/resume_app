class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.date :start_date
      t.date :end_date
      t.string :job_title
      t.boolean :current
      t.text :details

      t.timestamps
    end
  end
end
