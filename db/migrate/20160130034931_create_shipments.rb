class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :custom_number
      t.decimal :gst
      t.date :payment_date
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
