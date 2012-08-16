# DarthSubs
### a Rails application for ordering sub sandwiches

## General Requirements
There are two kinds of users

1.  Customers
 - Customers must register before ordering      
  -- Required to provide a name and email address when registering
 - Can order subs.
  -- Required to pick size and toppings.
 - Can see their open orders
  -- show a timer for how long the order has been open
  -- Use AJAX polling to remove the order from the open order list when the order is closed by an employee in a different browser window.
 - Can see a list of their previously closed orders

2.  Employees
 - Can see a list of all open orders for all customers
 - Can mark orders as complete
 - Can see a list of all completed orders for all customers

## Testing I'll Be Adding
I have read a lot about Rails testing, but haven't delved deeply enough into any one of the options (though I'm tending towards rspec and cucumber). So for now, I'll list the tests I want to add, and they will get put in once I have enough knowledge or experience to make them work. These are, of course, in addition to testing for the general requirements noted above.

I have deleted all the auto-generated tests under spec/ and features/ for now, since they are not valid.

### Customers - General
- Require both an email and name to be valid
- Can view current and past orders from Order menu
- Can view active orders (not completed) on home page
- Home page view will update when order is complete

### Orders - General
- Cannot edit after complete
- Can only be completed by a cook. This is done from the edit screen, once the sandwich has been made.

### View - Home - Index
- If not logged in, user can login or sign-up
- If logged in as admin, shows Admin menu
- If not logged in as admin, does not show Admin menu
- If logged in as cook, tells cook to get to work
- If logged in as user, shows recent sub orders
- If logged in, shows Orders menu
- If logged in, shows Edit Profile menu

### View - Admin - Index
- Shows list of users with show, edit, and delete capabilities

### View - Orders - Index
- If logged in as Admin or Cook, shows all orders
- If logged in as User, only shows user's orders
- Edit option only available for Incomplete orders

### View - Orders - Show
- Shows type of sandwich, description, and list of requested ingredients
- Allows edit if order has not been marked as complete

### View - Order - Edit
- Shows the option for Completing the order if user is a Cook
- Does not show the option for Completing the order if user is not a Cook

### View - Order - New
- User can select the type of product
- User can select various ingredients to add
- User can save or cancel the order



And so forth ;-)