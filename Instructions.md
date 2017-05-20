# Rails Challenge - A simplified Yelp

## Summary

In this challenge, you will demonstrate proficiency in building a web application with authentication, authorization, and some AJAX to enhance the user experience.

We will build a simplified version of Yelp. We will not worry about locations or ways of categorizing listings, but instead focus solely on creating restaurants so in the future logged in users can review them (we won't get to the reviews today).

The required functionality of the site will be described in more detail in each section below, but here's a basic overview.

#### All Users
- Browse restaurants

#### Unregistered Users
- Register a new account

#### Registered Users
- Sign in
- Sign out
- Create new restaurants

### Completing the App
Complete as much of this app as possible in the time allowed (3 hours).  If time is running out and it looks like the app will not be completed, continue to work and complete as much as possible. If you find yourself stuck, be sure to ask clarifying questions.

You should aim for 100% test coverage and deploy your application to production. Only what is on production will be considered "complete."

When finished, submit a PR [here](https://github.com/turingschool/ruby-submissions/blob/master/1611-b/4module/rails_challenge.md) and update the links associated with your name.

### Part Zero: Setup

You'll be starting from scratch with this application. During the real assessment, you're open to building this application using whatever language and framework you choose, but for this challenge, we'd like for you to practice with Rails.

### Part One: User Registration
_Given:_
* The current user does not have an account.

---------

Create a "Register" link on the homepage.

When the user clicks the "Register" link they should be taken to a page with a form to create a new account (email, password)
  * Emails must be unique

Upon successful submission:
  * the user record should be created
  * the user should be logged in
  * the user should be taken back to the homepage

When returning to the home page:
  * the "Register" link should no longer be visible
  * the user should see "Welcome: [email]"
  * the user should see all restaurants

Upon unsuccessful submission:
  * the user should be returned to the registration page
  * the user should see an error message "Sorry, but that email has already been taken."

### Part Two: Login/Logout
#### Login
_Given:_

* There is a previously registered user
* User is not currently logged in:

-------

On the home page, create a link to login next to the registration link.

When a user clicks on this link they should be taken to a page with a form to enter their credentials.

If the credentials match, the user should be taken back to the homepage.

If the credentials do not match, the user should see the login form and an error message stating the credentials were not valid.

#### Logout
_Given:_

* There is a previously registered user
* User is currently logged in

--------

Create a "logout" link on the homepage.

When the user clicks on the logout link they should be taken to the home page and the links "Register" and "Login" should both be visible.

### Part Three: The C part of CRUD
We'll now give users the ability to add new restaurants to the site.

#### Creating Restuarants
_Given:_

* The registered user is signed in:

--------

On the home page create a link to add a restaurant, this link should _only_ be visible to signed in users.

When the user clicks on the add restaurant link, a form will appear without the page refreshing where they can enter the following information:
  * name
  * cuisine (e.g., Italian, Bakery, Sandwiches etc.)
  * city
  * state
  * zip

When the user submits the form
  * the user should be set as the restaurant's creator
  * the user should be taken back to the home page without a page refresh
  * the new restaurant will be visible at the top of the list of restaurants on the home page

**When adding this functionality, the page should not refresh.**
