# Bookmark 

 This bookmark manager is a website to maintain a collection of bookmarks (URLs). You can use it to save a webpage you found useful. You can add tags to the webpages you saved to find them later. You can browse bookmarks other users have added. You can comment on the bookmarks.

 # User requirements 

 As a user 
 So I can keep a list of all my bookmarks
 I want to show a list of my bookmarks 

 # Domain model

 ![Domain model diagram](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png?raw=true)
 
### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
 CREATE DATABASE bookmark_manager;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.