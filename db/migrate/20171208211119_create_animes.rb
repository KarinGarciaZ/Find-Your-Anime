class CreateAnimes < ActiveRecord::Migration[5.0]
  def change
    create_table :animes do |t|
      t.string :name
      t.integer :chapters
      t.integer :idPage

      t.timestamps
    end
  end
end
