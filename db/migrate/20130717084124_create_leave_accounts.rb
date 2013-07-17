class CreateLeaveAccounts < ActiveRecord::Migration
  def change
    create_table :leave_accounts do |t|
      t.string :employee_id
      t.string :leave_type_id
      t.integer :count

      t.timestamps
    end
  end
end
