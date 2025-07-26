# Banking Website

## Overview
This project is a simple banking website that provides users with the ability to manage multiple bank accounts, sign up for new accounts, and log in to access their profiles. Additionally, it includes a currency converter tool that users can access from their profiles.
[View My Presentation on SlideShare](https://www.slideshare.net/slideshow/ruby-banking-app-for-senior-year-project-in-principles-of-programming-languages/281983836)

## Features
- User authentication (username and password)
- Management of multiple bank accounts for a single user
- Currency converter tool
- User profile management (sign up, log-in, and log-out features only)

## Technologies Used
- Gems:
    bcrypt (for password security)
    dotenv-rails (for environment variables/API keys)
    jbuilder, turbo-rails, stimulus-rails (if used))
- SQLite3 (or any other database specified in `database.yml`)
- HTML, CSS, and JavaScript for front-end development
- Free Version of Currency Conversion API: https://www.exchangerate-api.com/

## Environment Variables

Create a `.env` file in the project root with your API key:
EXCHANGE_RATE_API_KEY=your_api_key_here
> **Note:** Do not commit your `.env` file or share your API key publicly.

## Getting Started
1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd ppl_app
   ```

2. **Install dependencies:** - important if you'd like to ensure all gems are functional
   ```
   bundle install
   ```

3. **Set up the database:**
   ```
   rails db:create
   rails db:migrate
   (should hopefully already be done)
   ```

4. **Start the server:**
   ```
    rails server
    -- or --
    rails s
   ```

5. **Access the application:**
   Open your web browser and navigate to `http://localhost:3000` after starting your server with rails s

## Usage
- **Sign Up:** Navigate to the sign-up page to create a new account.
- **Log In:** Use the login page to access your account.
- **Log Out:** Once logged in, can sign out on the navbar and know which user is currently active
- **Manage Accounts:** Once logged in, you can view and manage your bank accounts.
- **Currency Converter:** Access the currency converter tool from your profile.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.
