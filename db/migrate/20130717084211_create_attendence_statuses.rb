class CreateAttendenceStatuses < ActiveRecord::Migration
  def change
    create_table :attendence_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
