class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name_az
      t.string :name_en
      t.string :name_ru
      t.string :desc_az
      t.string :desc_ru
      t.string :desc_en
      t.text :about_az
      t.text :about_ru
      t.text :about_en
      t.string :img

      t.timestamps
    end
  end
end
