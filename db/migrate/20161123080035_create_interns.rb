class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :title
      t.text :context
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.string :owner
      t.integer :intern_type

      t.timestamps null: false
    end
  end
end
