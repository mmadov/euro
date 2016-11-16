class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :about_az
      t.text :about_ru
      t.text :about_en

      t.timestamps
    end
  end
end
