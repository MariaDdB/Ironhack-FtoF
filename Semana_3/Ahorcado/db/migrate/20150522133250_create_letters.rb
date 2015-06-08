class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
       t.string :letter_name
       t.integer :word_id

       t.timestamps null: false
    end
  end
end
