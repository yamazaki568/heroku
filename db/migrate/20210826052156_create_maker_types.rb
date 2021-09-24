class CreateMakerTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :maker_types do |t|
      t.references :maker, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
