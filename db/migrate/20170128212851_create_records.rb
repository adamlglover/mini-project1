class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :c_id
      t.string :c_fn
      t.string :c_ln
      t.string :c_address
      t.string :c_state
      t.integer :c_zip
      t.integer :p_num
      t.text :p_descript
      t.integer :p_instock
      t.date :p_date
      t.integer :p_sold
      t.integer :p_qoh
      t.decimal :p_price
      t.integer :a_id
      t.date :a_date
      t.boolean :a_paid
      t.integer :i_id
      t.integer :i_order_size
      t.string :i_vendor_fn
      t.string :i_vendor_ln
      t.string :i_vendor_email
      t.date :i_order_date

      t.timestamps null: false
    end
  end
end
