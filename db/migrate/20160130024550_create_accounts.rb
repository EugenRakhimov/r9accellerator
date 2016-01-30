class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.decimal :credit
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
