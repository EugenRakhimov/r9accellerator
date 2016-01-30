class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :condition
      t.string :action
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
