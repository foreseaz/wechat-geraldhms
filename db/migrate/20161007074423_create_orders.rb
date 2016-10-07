class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :room_type
      t.date :checkin
      t.date :leaveat
      t.string :floor
      t.text :requirement
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
