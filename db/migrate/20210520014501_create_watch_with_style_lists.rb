class CreateWatchWithStyleLists < ActiveRecord::Migration[6.1]
  def change
    create_table :watch_with_style_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
