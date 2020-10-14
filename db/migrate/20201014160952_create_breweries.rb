class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :city
      t.string :website_url

      t.timestamps
    end
  end
end
