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

Story 3: In order to see the wildlife sightings, as a user of the API, I need to run reports on animal sightings.

Branch: animal-sightings-reports

Acceptance Criteria

Can see one animal with all its associated sightings
Hint: Checkout this example on how to include associated records

render json: { id: animal.id, name: animal.name, binomial: animal.binomial, sightings: animal.sightings}

Can see all the all sightings during a given time period




Hint: Your controller can use a range to look like this:
class SightingsController < ApplicationController
  def index
    sightings = Sighting.where(date: params[:start_date]..params[:end_date])
    render json: sightings
  end
end
Hint: Be sure to add the start_date and end_date to what is permitted in your strong parameters method
Hint: Utilize the params section in Postman to ease the developer experience
Hint: Routes with params

Story 4: In order to see the wildlife sightings contain valid data, as a user of the API, I need to include proper specs.

Branch: animal-sightings-specs

Acceptance Criteria
Validations will require specs in spec/models and the controller methods will require specs in spec/requests.

Can see validation errors if an animal doesn't include a common name and scientific binomial


Can see validation errors if a sighting doesn't include latitude, longitude, or a date


Can see a validation error if an animal's common name exactly matches the scientific binomial


Can see a validation error if the animal's common name and scientific binomial are not unique


Can see a status code of 422 when a post request can not be completed because of validation errors
Hint: Handling Errors in an API Application the Rails Way
