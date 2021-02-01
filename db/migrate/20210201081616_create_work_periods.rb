class CreateWorkPeriods < ActiveRecord::Migration[6.1]
  def change
    create_table :work_periods do |t|
      t.integer :company_id
      t.integer :user_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
