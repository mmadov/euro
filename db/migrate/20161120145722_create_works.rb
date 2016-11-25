class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :desc
      t.text :text
      t.string :image
      t.string :locale

      t.timestamps
    end
  end
end
