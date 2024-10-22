# Store Rating Platform

This Ruby on Rails application allows users to rate stores based on various functionalities according to their roles. The application supports three types of users: System Admin, Normal User, and Store Owner.

## Features
- Admin users can manage stores, users, and view ratings.
- Normal users can rate and view store listings.
- Store owners can view user ratings of their stores.

## Tech Stack
- **Ruby on Rails**: Backend framework
- **PostgreSQL**: Database
- **Bootstrap**: For styling and responsive design
- **Devise**: User authentication system

## Getting Started

### Prerequisites
- Ruby 3.x.x
- Rails 7.x.x
- PostgreSQL or MySQL

### Setup Instructions
1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/store-rating-platform.git
    ```
2. Navigate to the project directory:
    ```bash
    cd store-rating-platform
    ```
3. Install dependencies:
    ```bash
    bundle install
    ```
4. Set up the database:
    ```bash
    rails db:create
    rails db:migrate
    rails db:seed
    ```
5. Start the server:
    ```bash
    rails server
    ```

### Running Tests
To run the test suite:
```bash
rspec
