# DarthSubs
### a Rails application for ordering sub sandwiches

## General Requirements
There are two kinds of users

1.  Customers
 - Customers must register before ordering      
  * Required to provide a name and email address when registering
 - Can order subs.
  * Required to pick size and toppings.
 - Can see their open orders
  * show a timer for how long the order has been open
  * Use AJAX polling to remove the order from the open order list when the order is closed by an employee in a different browser window.
 - Can see a list of their previously closed orders

2.  Employees
 - Can see a list of all open orders for all customers
 - Can mark orders as complete
 - Can see a list of all completed orders for all customers

## Testing I'll Be Adding
I have read a lot about Rails testing, but haven't delved deeply enough into any one of the options (though I'm tending towards rspec and cucumber). So for now, I'll list the tests I want to add, and they will get put in once I have enough knowledge or experience to make them work. These are, of course, in addition to testing for the requirements noted above.

### Customers
- Require both an email and name to be valid
- Can view current and past orders from Order menu
- Can view active orders (not completed) on home page
- Home page view will update when order is complete

### Orders
- Cannot edit after complete
- Can only be completed by a cook

And so forth ;-)