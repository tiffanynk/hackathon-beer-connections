class CreateFans < ActiveRecord::Migration[6.0]
  def change
    create_table :fans do |t|
      t.string :name
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
