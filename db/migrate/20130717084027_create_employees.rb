class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :code
      t.string :department_id
      t.string :salary_id
      t.string :phone
      t.string :email
      t.string :address
      t.string :resume
      t.string :photo
      t.string :date_of_joining
      t.string :shift_id

      t.timestamps
    end
  end
end
