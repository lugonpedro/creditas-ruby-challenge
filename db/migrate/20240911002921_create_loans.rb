class CreateLoans < ActiveRecord::Migration[7.2]
  def change
    create_table :loans do |t|
      t.string :client
      t.text :loan_type
      t.integer :taxes
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
