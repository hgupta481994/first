class AddAttachmentImageToLinks < ActiveRecord::Migration[5.1]
  def self.up
    change_table :links do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :links, :image
  end
end
