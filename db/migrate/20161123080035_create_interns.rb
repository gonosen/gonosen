class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :title        ,null: false  , default: "タイトル"
      t.text :context        ,null: false  , default: "本文"            
      t.datetime :start_time ,null: false  , default: -> { 'NOW()' }
      t.datetime :end_time   ,null: false  , default: -> { 'NOW()' }
      t.string :location     ,null: false  , default: "特になし"                    
      t.string :owner        ,null: false  , default: "特になし"    
      t.text :timeschedule   ,null: false  , default: "特になし"            
      t.text :deadline       ,null: false  , default: "特になし"
      t.text :baggage        ,null: false  , default: "特になし"
      t.integer :intern_type ,null: false  , default: 0
      t.integer :intern_span ,null: false  , default: 0

      t.timestamps null: false
    end
  end
end
