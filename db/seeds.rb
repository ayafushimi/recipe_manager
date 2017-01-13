# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    username: "aaa",
    email: "aaa@aaa",
    password: "aaaaaa"
  },
  {
    username: "bbb",
    email: "bbb@bbb",
    password: "bbbbbb"
  },
  {
    username: "ccc",
    email: "ccc@ccc",
    password: "cccccc"
  }
]


users.each do |a|
  User.create(a)
end


recipes = [
  {
    title: "steak",
    time: 20,
    link: nil,
    creator:User.find(1)
  },
  {
    title: "stew",
    time: 60,
    link: nil,
    creator:User.find(2)
  }
]

recipes.each do |a|
  Recipe.create(a)
end

Recipe.find_by(title:"steak").update(
  recipe_ingredients_attributes: [
    {
      ingredient_attributes:{title:"beef"},
      quantity:400,
      unit:"g"
    },
    {
      ingredient_attributes:{title:"garlic"},
      quantity:1,
      unit:"piece"
    }
  ],
  directions_attributes: [
    {text:"Warm meat to room temperature"},
    {text:"Deep fried sliced garlic on low heat with 2 tablespoons of oil"},
    {text:"Remove the garlic while leaving the oil and fry meat with high heat"}
  ]
)

Recipe.find_by(title:"stew").update(
  recipe_ingredients_attributes: [
    {
      ingredient_attributes:{title:"beef"},
      quantity:200,
      unit:"g"
    },
    {
      ingredient_attributes:{title:"onion"},
      quantity:150,
      unit:"g"
    },
    {
      ingredient_attributes:{title:"potato"},
      quantity:100,
      unit:"g"
    },
    {
      ingredient_attributes:{title:"carrot"},
      quantity:80,
      unit:"g"
    }
  ],
  directions_attributes: [
    {text:"Cut meet and vegetables into bite-sized pieces"},
    {text:"Fry meet and vegetables"},
    {text:"Pour 3 cups water"},
    {text:"Simmer until vegetables get soft"},
    {text:"Put roux and melt it"}
  ]
)
