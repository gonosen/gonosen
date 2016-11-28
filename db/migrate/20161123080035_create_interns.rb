class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :title
      t.text :context

      t.timestamps null: false
    end
  end
end
