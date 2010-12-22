class CreateWebClips < ActiveRecord::Migration
  def self.up
    create_table :web_clips do |t|
      t.string :title
      t.string :url
      t.text :quote
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :web_clips
  end
end
