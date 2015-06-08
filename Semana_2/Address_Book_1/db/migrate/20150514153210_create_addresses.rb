class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
    	t.text :email_address
    	t.integer :contact_id

      	t.timestamps
    end
  end
end
