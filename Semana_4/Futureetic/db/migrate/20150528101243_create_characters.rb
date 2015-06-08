class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	t.string :name
    	t.integer :age
    	t.string :favourite_food
    	t.string :programming_language
    	t.text :hobbies
        t.text :image

        t.timestamps null: false
    end
  end
end
