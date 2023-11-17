require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create(name: 'Test Item') }

  # Test soft deleting an item.
  it 'soft deletes an item' do
    item.soft_delete
    expect(item.deleted_at).to be_present
  end

  # Test restoring a soft-deleted item.
  it 'restoring a soft-deleted item' do
    item.soft_delete
    item.restore
    expect(item.deleted_at).to be_nil
  end

  # Test that soft-deleted items are excluded from normal queries.
  it 'excludes soft-deleted items from normal queries' do
    item.soft_delete
    expect(Item.all).not_to include(item)
  end
  
end
