class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :fullname
      t.string :pic
      t.string :phone
      t.integer :country_id
      t.string :email

      t.timestamps
    end
  end
end
