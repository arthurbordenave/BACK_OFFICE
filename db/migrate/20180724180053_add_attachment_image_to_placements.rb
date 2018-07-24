class AddAttachmentImageToPlacements < ActiveRecord::Migration
  def self.up
    change_table :placements do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :placements, :image
  end
end
