require 'rails_helper'

RSpec.describe Item, type: :model do
  # Test for soft delete
  it 'marks an item as deleted' do
    item = Item.create(name: "Test Item")
    item.soft_delete
    expect(item.deleted_at).not_to be_nil
  end

  # Test for restoring an item
  it 'restores a soft-deleted item' do
    item = Item.create(name: "Test Item")
    item.soft_delete
    item.restore
    expect(item.deleted_at).to be_nil
  end

  # Test that soft-deleted items are not retrieved by default
  it 'excludes soft-deleted items from default scope' do
    deleted_item = Item.create(name: "Deleted Item", deleted_at: Time.current)
    active_item = Item.create(name: "Active Item")

    expect(Item.all).to include(active_item)
    expect(Item.all).not_to include(deleted_item)
  end
end
