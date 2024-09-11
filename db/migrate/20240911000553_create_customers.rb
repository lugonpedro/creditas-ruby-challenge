class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cpf
      t.integer :age
      t.string :location
      t.integer :income

      t.timestamps
    end
  end
end
