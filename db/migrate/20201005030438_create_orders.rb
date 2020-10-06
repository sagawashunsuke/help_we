class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer      :user_id, null: false, foreign_key: true
      t.integer      :ticket_id, null: false
      t.timestamps
    end
  end
end
