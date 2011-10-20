class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.integer :zipcode
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end 
    
  add_index :addresses, [:addressable_type, :addressable_id], :unique => true   
  add_index :addresses, :zipcode

  end
end
