class CreateAttendences < ActiveRecord::Migration
  def change
    create_table :attendences do |t|
      t.string :employee_id
      t.datetime :date_time
      t.string :attendence_status_id
      t.string :user_id

      t.timestamps
    end
  end
end
