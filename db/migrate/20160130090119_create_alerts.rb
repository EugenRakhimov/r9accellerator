class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.integer :watch_param
      t.integer :condition
      t.integer :comparer

      t.timestamps null: false
    end
  end
end
