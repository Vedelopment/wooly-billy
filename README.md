# README

This site is a great way to tediously grow hair on Wooly-Billy. It's like watching paint dry but where you have to fill out a DMV form at the same time.

* Please seed the database before creating hairs!
* Run on localhost:5000

This was built in Rails with "Area" and "Hair" models. The Hair class has a polymorphic database relationship to the Area class through the association of "Growable". A Hair can belong to any three of the seeded Area instances, but it can only belong to one of them.

The front end uses embedded ruby to style each created hair using absolute position in a relative container. It uses the x, y and rotate values from each hair instance to set the positioning.

Most of the HTML content is generated from database content. There is a handy list of hairs you've created at the bottom to help you decide where to place your next hair.

Enjoy!
