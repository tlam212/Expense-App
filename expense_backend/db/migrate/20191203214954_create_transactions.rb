class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :account, null: false, foreign_key: true
      t.string :type
      t.string :description
      t.float :amount
      t.datetime :date

      t.timestamps
    end
  end
end
