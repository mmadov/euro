class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :desc
      t.text :text
      t.integer :categ
      t.string :locale

      t.timestamps
    end
  end
end
