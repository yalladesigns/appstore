class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :User, foreign_key: true
      t.references :App, foreign_key: true

      t.timestamps
    end
  end
end
