https://cryptic-cliffs-52843.herokuapp.com/

Directions:
------
The following describes a coding exercise that should take between 2-4 hours to complete. If you have questions about the desired behavior or boundaries, make an assumption and document it. Submit this documentation with your code.

Write a program for managing locker reservations at a hotel concierge desk. Customers leave bags with the concierge, who then uses your program to determine in which locker to place the bag. The program tells the concierge the number of the locker in which to place the bag, and prints a ticket to give to the customer. Upon return, the customer provides the ticket, and the concierge uses that to look up the corresponding locker, retrieve the bag, and return it to the customer.
There are 1000 small lockers, 1000 medium sized lockers, and 1000 large lockers (it’s a big Vegas hotel). You can assume that all checked bags fit into one of these three sizes. The program should​ ​always assign the smallest available locker that fits the bag.


Design Decisions:
------
I made the assumption that locker sizes and locker quanities could differ from one format. I added three sizes in the seeds and three static sizes in the Locker model. They are a little too specific for a scenario where a large hotel chain might share software between buildings.  They sure made things easy one me though :)

I also wanted a persistent place to store the data in case the app crashed. This made me want to do a rails app.

Since the size of a bag is usually slightly more complicated than S, M, and L, I would like the app to assist the user in making the decision on whether a bag fits into a particularly sized locker.  Also, all lockers are likely not created equal.  I want to be able to assign locker size and determine whether a bag fits into a locker of the correct size.  This may not pan out, but I think it is a fun exercise.

I am deleting the bag after retrieval, which will mess up auditing.  more on retrospective.

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

Retrospective:
--
1. I probably didnt need to delete the bag.
2. I could have stuck to things that I was more comfortable with, but it was fun regardless
3. I didnt end up rally using the 3d measurements.  I intended to implement a "does my bag fit?" mechanism, but it was starting to look like quite a bit of scope creep there at the end.
4. I only used one route that went through a jbuilder, so i didnt really take the chance to leverage the cool stuff i could have had.
5. Totally blanked on getting outlier tests in.  Bag 3001 is going to have a tough time.
