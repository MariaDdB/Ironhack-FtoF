class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
    	t.string :name
    	t.string :tip
    	t.integer :lives


        t.timestamps null: false
    end
  end
end
