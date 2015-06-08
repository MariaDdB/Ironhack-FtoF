class CreateIronurls < ActiveRecord::Migration
  def change
    create_table :ironurls do |t|
    	t.string :url
    	t.integer :visit, default: 0

      t.timestamps null: false
    end
  end
end
