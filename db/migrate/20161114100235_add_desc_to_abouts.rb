class AddDescToAbouts < ActiveRecord::Migration[5.0]
  def change
    add_column :abouts, :desc_az, :text
    add_column :abouts, :desc_ru, :text
    add_column :abouts, :desc_en, :text
  end
end
