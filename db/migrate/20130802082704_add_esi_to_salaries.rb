class AddEsiToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :esi, :string
  end
end
