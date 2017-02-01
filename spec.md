# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (Recipes has_many Directions)
- [x] Include at least one belongs_to relationship (Report belongs_to User)
- [x] Include at least one has_many through relationship (Recipe has_many Ingredients through RecipeIngredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute (recipe_ingredient.quantity)
- [x] Include reasonable validations for simple model objects (User, Report)
- [x] Include a class level ActiveRecord scope method ( Recipe.order_by_time URL: / )
- [x] Include a nested form writing to an associated model using a custom attribute writer (/recipe/new, Recipe -> RecipeIngredient -> Ingredient)
- [x] Include signup (/signup, UsersController#new)
- [x] Include login (/signin, SessionsController#new)
- [x] Include logout (/signout, SessionsController#destroy)
- [x] Include third party signup/login (OmniAuth)
- [x] Include nested resource show or index (/recipes/:recipe_id/reports)
- [x] Include nested resource "new" form (/recipes/:recipe_id/reports/new)
- [x] Include form display of validation errors (/signup)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
