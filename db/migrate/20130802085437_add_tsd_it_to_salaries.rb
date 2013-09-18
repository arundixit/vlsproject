class AddTsdItToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :tsd_it, :string
  end
end
