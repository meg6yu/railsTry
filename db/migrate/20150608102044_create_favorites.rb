class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :favoller_id
      t.integer :faved_id

      t.timestamps null: false
    end
  end
end
