class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :is_allday
      t.string :memo

      t.timestamps
    end
  end
end
