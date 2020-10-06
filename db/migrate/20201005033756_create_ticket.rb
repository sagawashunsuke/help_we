class CreateTicket < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :user_id, null: false, FK:true
      t.string  :name, null:false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
