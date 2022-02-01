class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.integer :show_id
      t.string :media_type
      t.string :name
      t.string :director
      t.text :cast
      t.string :country
      t.string :date_added
      t.integer :release_year
      t.string :rating
      t.string :duration
      t.string :listed_in
      t.text :description

      t.timestamps
    end
  end
end
