class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :desc
      t.text :text
      t.integer :pagename_id
      t.string :locale_code

      t.timestamps
    end
  end
end
