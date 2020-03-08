Use the Ruby on Rails framework.

Your models must:

• Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

• Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

Your application must provide standard user authentication, including signup, login, logout, and passwords.

Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

You must include and make use of a nested resource with the appropriate RESTful URLs.

• You must include a nested new route with form that relates to the parent resource

• You must include a nested index or show route

Your forms should correctly display validation errors.

a. Your fields should be enclosed within a fields_with_errors class

b. Error messages describing the validation failures must be present within the view.

Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

• Logic present in your controllers should be encapsulated as methods in your models.

• Your views should use helper methods and partials when appropriate.

• Follow patterns in the Rails Style Guide and the Ruby Style Guide.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

scope methods I might want:
filter organizations based on animals status(endangered or not)
filter based on animal species and/or type


## DonationsController will need:
# index action ( get '/donations' => to: 'donations#index')
# new action( get '/donations/new' => to: 'donations#new')
# create action( post '/donations' => to: 'donations#create')
# show action(possibly)( get '/donations/:id' => to 'donations#show')

# DonationsController routes:
 * get  '/donations/:donation_id/organizations/new' ???? Does this fulfill the requirements for nested resource?

 * get '/donations/:donation_id/organizations' to: => 'donations#index' (if we use this we dont need the donations#show action)
 * get '/donations/:donation_id/organizations' to: => 'organizations#index'
 * get '/donations/:donation_id/organizations/new' to: => 'organizations#new'
 * posst 'organizations' to: => 'organizations#create'