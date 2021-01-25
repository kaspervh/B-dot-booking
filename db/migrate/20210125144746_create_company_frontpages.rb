class CreateCompanyFrontpages < ActiveRecord::Migration[6.1]
  def change
    create_table :company_frontpages do |t|
      t.integer :company_id
      t.text :main_image
      t.string :main_header
      t.text :about_image
      t.string :about_header
      t.text :about_text
      t.timestamps
    end
  end
end
