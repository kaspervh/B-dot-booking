class CreateFrontpages < ActiveRecord::Migration[6.1]
  def change
    create_table :frontpages do |t|
      t.integer :company_id
      t.text :main_image, :limit => 4294967295
      t.string :main_header
      t.text :about_image, :limit => 4294967295
      t.string :about_header
      t.text :about_text

      t.timestamps
    end
  end
end
