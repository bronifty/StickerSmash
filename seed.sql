-- Create tables for users, profiles, and comments
CREATE TABLE users ( id INTEGER PRIMARY KEY, username TEXT NOT NULL, password TEXT NOT NULL );

CREATE TABLE profiles (id INTEGER PRIMARY KEY, user_id INTEGER NOT NULL,full_name TEXT NOT NULL, bio TEXT, FOREIGN KEY (user_id) REFERENCES users(id));

CREATE TABLE comments (id INTEGER PRIMARY KEY, user_id INTEGER NOT NULL,post_id INTEGER NOT NULL, content TEXT NOT NULL, FOREIGN KEY (user_id)REFERENCES users(id),FOREIGN KEY (post_id) REFERENCES posts(id));

-- Create table for posts
CREATE TABLE posts (id INTEGER PRIMARY KEY,user_id INTEGER NOT NULL,title TEXT NOT NULL,content TEXT NOT NULL,FOREIGN KEY (user_id) REFERENCES users(id));

INSERT INTO posts (user_id, title, content) VALUES (1, "How to Build a Basic CRUD App in Ruby on Rails", "In this tutorial, we will cover the basics of creating a CRUD (Create, Read, Update, Delete) application in Ruby on Rails. We will start by setting up a new Rails project, then add the necessary controllers and views for our CRUD functionality.");
INSERT INTO posts (user_id, title, content) VALUES (2, "Introduction to Machine Learning", "Machine learning is a type of artificial intelligence that allows software applications to become more accurate at predicting outcomes without being explicitly programmed. In this article, we will provide an introduction to the basic concepts and techniques used in machine learning.");
INSERT INTO posts (user_id, title, content) VALUES (3, "Designing Effective Web Layouts", "In this tutorial, we will discuss some best practices for designing effective web layouts. From understanding the importance of typography and color to creating a clear visual hierarchy, we will cover the key elements of design that will help your website stand out.");

-- Insert sample data into the users table
INSERT INTO users (username, password) VALUES ("user1", "password1");
INSERT INTO users (username, password) VALUES ("user2", "password2");
INSERT INTO users (username, password) VALUES ("user3", "password3");

-- Insert sample data into the profiles table
INSERT INTO profiles (user_id, full_name, bio) VALUES (1, "John Smith", "I am a software developer.");
INSERT INTO profiles (user_id, full_name, bio) VALUES (2, "Jane Doe", "I am a data scientist.");
INSERT INTO profiles (user_id, full_name, bio) VALUES (3, "Bob Johnson", "I am a web designer.");

-- Insert sample data into the comments table
INSERT INTO comments (user_id, post_id, content) VALUES (1, 1, "Great post!");
INSERT INTO comments (user_id, post_id, content) VALUES (2, 1, "I agree!");
INSERT INTO comments (user_id, post_id, content) VALUES (3, 2, "Nice work!");
