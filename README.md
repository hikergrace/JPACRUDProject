# Denver Pub Sessions Tune Library

## Week 8 Homework Project for Skill Distillery - JPA CRUD

## Description
This CRUD project is a tune library for local session musicians. Users are able to see a list of tunes, view details of a tune, add a tune, and delete a tune. I built the library is a SQL database with one table and nine fields (currently). I built a JPA project integrated with a Spring MVC project with Gradle nature. There is currently one entity mapped to the SQL table. I created a JUnit test to make sure the entity mappings are correct. I used an external CSS (Bootstrap) file to style the front end.

The project currently meets MVP, however I plan to keep working on it and build it out completely with the TODOs listed below.

## Deliverables
+ Utilizes a MySQL database to manipulate data.
+ One a single table and entity are required.
+ MySQL table is mapped to a valid JPA Entity.  
+ JUnit tested to ensure the mappings are working correctly.
+ Basic CRUD operations.
+ Web interface
+ Deploy to AWS

## TODOS
+ I want to add in sound files for each tune; one clip of the tune at session speed and another clip of the tune at learning speed.
+ Search capability to search tune by name, style, and/or by key.
+ Link tunes in setlists to tune descriptions
+ Continue with front end design and styling, add images and some color to the jsp.
+ Work on the UX design for a better user experience with navigation.
+ Prevent duplicate tunes from being added.

## Challenges/Learning Experiences
+ Music has keys (A Major, G minor, etc). However, it doesn't work to name a field in a SQL table "key". Won't make that mistake again.
+ Since we've just started integrating JPA project and Spring MVC, I still feel a little hazy on exactly how all the pieces are coming together. But I'm gaining a better understanding of it and just need to build more.
+ Styling the jsp files is not as easy as I thought it would be and sure not as easy as styling an HTML file, at least not yet!
