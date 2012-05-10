DarthSubs -  a Rails application for ordering sub sandwiches

There are two kinds of users
1.  Customers
    - Customers must register before ordering
      - Required to provide a name and email address when registering
    - Can order subs.
      - Required to pick size and toppings.
    - Can see their open orders
      - show a timer for how long the order has been open
       - Use AJAX polling to remove the order from the open order list when the order is closed by an employee in a different browser window.
  - Can see a list of their previously closed orders
2.  Employees
  - Can see a list of all open orders for all customers
  - Can mark orders as complete
  - Can see a list of all completed orders for all customers
