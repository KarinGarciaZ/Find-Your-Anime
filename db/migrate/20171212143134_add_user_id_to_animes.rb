class AddUserIdToAnimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :animes, :user, foreign_key: true
  end
end
