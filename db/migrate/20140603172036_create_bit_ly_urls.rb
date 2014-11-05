class CreateBitLyUrls < ActiveRecord::Migration
  def change
    create_table :bit_ly_urls do |t|
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
