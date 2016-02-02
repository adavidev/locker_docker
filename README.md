Directions:
------
The following describes a coding exercise that should take between 2-4 hours to complete. If you have questions about the desired behavior or boundaries, make an assumption and document it. Submit this documentation with your code.

Write a program for managing locker reservations at a hotel concierge desk. Customers leave bags with the concierge, who then uses your program to determine in which locker to place the bag. The program tells the concierge the number of the locker in which to place the bag, and prints a ticket to give to the customer. Upon return, the customer provides the ticket, and the concierge uses that to look up the corresponding locker, retrieve the bag, and return it to the customer.
There are 1000 small lockers, 1000 medium sized lockers, and 1000 large lockers (it’s a big Vegas hotel). You can assume that all checked bags fit into one of these three sizes. The program should​ ​always assign the smallest available locker that fits the bag.


Design Decisions:
------
I made the assumption that locker sizes and locker quanities could differ from one format. I added three sizes in the seeds and three static sizes in the Locker model. They are a little too specific for a scenario where a large hotel chain might share software between buildings.  They sure made things easy one me though :)

Since the size of a bag is usually slightly more complicated than S, M, and L, I would like the app to assist the user in making the decision on whether a bag fits into a particularly sized locker.  Also, all lockers are likely not created equal.  I want to be able to assign locker size and determine whether a bag fits into a locker of the correct size.  This may not pan out, but I think it is a fun exercise.


Interaction:
---
1. check bag
2. receive ticket
3. store bag in locker
4. present ticket number
5. return locker number
6. clear locker


Todo:
--
* ticket
* bag
* locker
* main page
* check bag
    * find smallest open locker for bag
    * create ticket... maybe printable
    * place bag
* get bag
    * return locker for ticket
    * present bag
    * clear locker