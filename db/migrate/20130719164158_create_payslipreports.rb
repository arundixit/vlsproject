class CreatePayslipreports < ActiveRecord::Migration
  def change
    create_table :payslipreports do |t|

      t.timestamps
    end
  end
end
