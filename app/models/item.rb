# app/models/item.rb

class Item < ApplicationRecord
    validates :name, presence: true
  
    # Soft delete method
    def soft_delete
      update(deleted_at: Time.now)
    end
  
    # Restore method
    def restore
      update(deleted_at: nil)
    end
  
    # Default scope to exclude soft-deleted items
    default_scope { where(deleted_at: nil) }
  end
  