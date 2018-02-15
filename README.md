# README

# Learning the Rails Data Flow

### Getting Started

Step 1) Inside your terminal type in 
    'git clone https://github.com/bZodeJames/rails_data_flow.git'

Step 2) Open the file inside your text editor and 'cd' into your project

Step 3) Once you are in the project from your terminal type the following
    'bundle install'
    'rails db:create'
    'rails db:setup'

### What's Inside

This simple Rails application uses a rails resource generator for the model 'Article'

The articles controller (app/controllers/article_controller.rb) is set up for basic CRUD functionality.
The article views contain your index, show, edit, and new pages, as well as the form partial.

### Rails Challenge
(You can complete this individually or along with the webinar)

Set up a pages_controller with the pages home, about, and favorites

Create a custom scope inside of the articles model for all articles with a rating of 4 or greater

Make your scope available to the favorites page, and display the artilces within the scope on the favorites page

Extra credit:
Run another resource generator of your choice and use at least 3 different rails data types. 
Build out the CRUD functionality from scratch. 



