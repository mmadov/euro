class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :desc
      t.text :text
      t.string :image
      t.float :main
      t.string :locale

      t.timestamps
    end
  end
end
