# README
Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

Create a resource for animal with the following information: common name and scientific binomial
rails generate resource Animal name:string binomial:string
      invoke  active_record
      create    db/migrate/20221213191550_create_animals.rb
      create    app/models/animal.rb
      invoke    rspec
      create      spec/models/animal_spec.rb
      invoke  controller
      create    app/controllers/animals_controller.rb
      invoke    erb
      create      app/views/animals
      invoke    rspec
      create      spec/requests/animals_spec.rb
      invoke    helper
      create      app/helpers/animals_helper.rb
      invoke      rspec
      create        spec/helpers/animals_helper_spec.rb
      invoke  resource_route
       route    resources :animals

Can see the data response of all the animals
Can create a new animal in the database
Can update an existing animal in the database
Can remove an animal entry in the database

Story 2: In order to track wildlife sightings, as a user of the API, I need to manage animal sightings.

Branch: sighting-crud-actions

Acceptance Criteria

Create a resource for animal sightings with the following information: latitude, longitude, date
Hint: An animal has_many sightings (rails g resource Sighting animal_id:integer ...)
Hint: Date is written in Active Record as yyyy-mm-dd (“2022-07-28")
Can create a new animal sighting in the database
Can update an existing animal sighting in the database
Can remove an animal sighting in the database
