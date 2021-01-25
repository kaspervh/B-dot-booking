class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.integer :user_id
      t.string :name
      t.string :cvr
      t.string :address
      t.string :zip_code
      t.string :city

      t.timestamps
    end
  end
end
