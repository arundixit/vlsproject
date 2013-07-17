class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.string :name
      t.string :from_time
      t.string :to_time

      t.timestamps
    end
  end
end
