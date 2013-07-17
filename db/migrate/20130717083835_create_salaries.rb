class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :name
      t.integer :amount
      t.text :description

      t.timestamps
    end
  end
end
