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

During the webinar we will be setting up a pages_controller and a custom scope inside of the articles model.

Custom scope for article rating:

You can paste the following code inside your app/models/article.rb to create a custom scope for all articles with a rating over 3.

```ruby
def high_ratings
    where("rating > ?", 3)
end
```
To run your pages controller you can run the following inside your terminal
rails g controller Pages home about favorites

To finish the custom scope inside app/controllers/pages_controller.rb you can add the following code inside the favorites method.

```ruby 
def favorites
    @favorites = Article.high_ratings
end
```

@favorites is now available to call in your favorites page, to show each article with a rating of 4 or 5.


