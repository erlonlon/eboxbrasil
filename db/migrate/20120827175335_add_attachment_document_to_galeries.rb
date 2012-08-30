class AddAttachmentDocumentToGaleries < ActiveRecord::Migration
  def self.up
    add_column :galeries, :document_file_name, :string
    add_column :galeries, :document_content_type, :string
    add_column :galeries, :document_file_size, :integer
    add_column :galeries, :document_updated_at, :datetime
  end

  def self.down
    remove_column :galeries, :document_file_name
    remove_column :galeries, :document_content_type
    remove_column :galeries, :document_file_size
    remove_column :galeries, :document_updated_at
  end
end
