# ABOUT / APPROACH

Tech test for Homeflow
- Techs used: Ruby, Rails, Rspec
- Outline: To create a one page property search portal from the homeflow API data
- Time taken: 4hrs
- Uploaded on heroku: https://polar-refuge-95863.herokuapp.com/properties

To run:
- on command line do: git clone https://github.com/crispinandrews/homeflow.git
- cd homeflow (change into file directory)
- bin/rake db:create
- bin/rake db:migrate
- bin/rails s
- visit http://localhost:3000/ in your browser
    - Now getting push error with full Homeflow API implemented
      - [!] There was an error while loading `homeflow_api.gemspec`: cannot load such file -- hashie/mash
        remote:  Does it try to require a relative path? That's been removed in Ruby 1.9. Bundler cannot continue.

## What to do next:
With more time I would like to have:
- possibly should have approached as more of a CRUD app, used the data in a table so I can use the where functions to search.......
- more search options and better search logic for filtering
- upon clicking a search result item have more info render under the Full Property Description
- more / some testing!! And to use doubles / stubs
- implement mapping based on the lat/lng provided


# BASIC USER STORIES

```
As a user
so I can search properites
I want to perform searches via a search input
```

```
As a user
so I can see the results
I want a results table based on my search
```
```
As a user
so I can see more info
I want to click on the results and have more information provided on a sep window
```
