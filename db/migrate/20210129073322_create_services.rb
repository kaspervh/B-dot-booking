class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.integer :company_id
      t.text :promo_image, :limit => 4294967295
      t.string :headline
      t.text :description
      t.string :price
      t.string :duration

      t.timestamps
    end
  end
end
