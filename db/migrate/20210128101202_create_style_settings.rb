class CreateStyleSettings < ActiveRecord::Migration[6.1]
  def change
    create_table :style_settings do |t|
      t.integer :company_id
      t.string :background_color
      t.string :navbar_color
      t.string :header_color
      t.string :text_color
      t.string :primary_button_color
      t.string :secondary_button_color

      t.timestamps
    end
  end
end
