class CreateCompanyFrontpages < ActiveRecord::Migration[6.1]
  def change
    create_table :company_frontpages do |t|
      t.integer :company_id

      t.timestamps
    end
  end
end
