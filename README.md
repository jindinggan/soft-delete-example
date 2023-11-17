## Soft Delete Coding Test

How to set up and run the test:

```bash
bundle install
rails db:migrate
rails db:test:prepare
bundle exec rspec
```

The soft delete functionality for the Ruby on Rails Item model involves:

Model Attributes:

* name (string): Represents the item name.
* deleted_at (datetime): Records soft deletions with a timestamp.

Soft Delete Methods:

* soft_delete: Marks an item as deleted by updating the deleted_at attribute with current timestamp.
* restore: Restores a soft-deleted item by setting deleted_at to nil.

Default Scope:

* A default scope excludes "deleted" items from standard queries.

Testing:

RSpec tests ensure the correctness of soft delete operations.

