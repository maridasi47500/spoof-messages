class CreateCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :countries do |t|
      t.string :country
      t.string :unicode
      t.string :phone

      t.timestamps
    end
  end
end
