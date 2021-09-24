class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :author
      t.date :published_on
      t.boolean :showing
      t.integer :price

      t.timestamps
    end
  end
end
