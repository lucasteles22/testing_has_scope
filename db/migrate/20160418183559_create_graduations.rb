class CreateGraduations < ActiveRecord::Migration
  def change
    create_table :graduations do |t|
      t.boolean :active
      t.string :degree
      t.string :name
      t.date :started_at
      t.date :ended_at

      t.timestamps null: false
    end
  end
end
