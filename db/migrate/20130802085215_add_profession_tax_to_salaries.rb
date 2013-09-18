class AddProfessionTaxToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :profession_tax, :string
  end
end
