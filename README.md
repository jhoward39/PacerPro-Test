# Item Soft Delete Functionality in Rails

## Overview
This Ruby on Rails application implements a basic soft delete functionality for a model named `Item`. Soft deletes allow records to be marked as "deleted" without physically removing them from the database, useful for features like a trash/recycle bin.

## Features
- **Soft Delete:** Records can be flagged as deleted with a timestamp instead of being removed from the database.
- **Restore Functionality:** Soft-deleted records can be restored to their original state.
- **Default Scope:** Soft-deleted items are automatically excluded from standard queries, ensuring seamless integration with existing application logic.

## Setup and Running

### Prerequisites
- Ruby version: 2.7.x or higher
- Rails version: 6.0 or higher
- Database: SQLite3 (default for Rails)

### Installation
1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   cd your-repo-name
   ```

2. **Install dependencies:**
   ```bash
   bundle install
   ```

3. **Database setup:**
   ```bash
   rails db:create db:migrate
   ```

### Running the Application
Start the Rails server:
```bash
rails server
```
Access the application at: [http://localhost:3000](http://localhost:3000)

### Running Tests
Execute the test suite:
```bash
bundle exec rspec
```

## Documentation

### Soft Delete Mechanism
- **Soft Delete Method:** `soft_delete` in `app/models/item.rb` marks the item as deleted.
- **Restore Method:** `restore` in `app/models/item.rb` reverses the soft delete.
- **Default Scope:** Excludes soft-deleted items from queries by default.