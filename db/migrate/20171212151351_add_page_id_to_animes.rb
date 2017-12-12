class AddPageIdToAnimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :animes, :page, foreign_key: true
  end
end
