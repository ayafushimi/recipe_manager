# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "aaa",email: "aaa@aaa",password: "aaaaaa")
user.recipes.build([
  {
    title: "Mom's Best Pork Chops",
    time: 85,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"egg"},
        quantity:"2"
      },
      {
        ingredient_attributes:{title:"garlic"},
        quantity:"1/2 teaspoon"
      },
      {
        ingredient_attributes:{title:"cracker"},
        quantity:"4 ounce"
      },
      {
        ingredient_attributes:{title:"vegetable oil"},
        quantity:"3 tablespoons"
      },
      {
        ingredient_attributes:{title:"pork chop"},
        quantity:"6 thin cut"
      }
    ],
    directions_attributes: [
      {text:"Preheat the oven to 375 degrees F (190 degrees C)."},
      {text:"In a shallow bowl or pie plate, whisk eggs with garlic powder and onion powder. Place cracker crumbs on a separate plate. Heat the oil in a large skillet over medium-high heat. Dip pork chops into the egg, then press in the cracker crumbs to coat. Fry in the hot oil for 2 to 3 minutes per side, just until golden brown. Remove to a baking sheet."},
      {text:"Bake for 45 minutes in the preheated oven, turning once. Serve immediately."}
    ]
  },
  {
    title: "Buffalo Chicken Mac and Cheese",
    time: 35,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"elbow macaroni"},
        quantity:"16 ounce"
      },
      {
        ingredient_attributes:{title:"chicken"},
        quantity:"1 rotisserie-roasted"
      },
      {
        ingredient_attributes:{title:"butter"},
        quantity:"6 tablespoons"
      },
      {
        ingredient_attributes:{title:"all-purpose flour"},
        quantity:"6 tablespoons"
      },
      {
        ingredient_attributes:{title:"black pepper"},
        quantity:"1 pinch ground"
      },
      {
        ingredient_attributes:{title:"Cheddar cheese"},
        quantity:"2 cups shredded"
      },
      {
        ingredient_attributes:{title:"Monterey Jack cheese"},
        quantity:"2 cups shredded"
      },
      {
        ingredient_attributes:{title:"hot sauce"},
        quantity:"1/2 cup"
      },
      {
        ingredient_attributes:{title:"gorgonzola cheese"},
        quantity:"1/2 cup crumbled"
      }
    ],
    directions_attributes: [
      {text:"Bring a large pot of lightly salted water to a boil. Cook macaroni in the boiling water, stirring occasionally until tender yet firm to the bite, 8 minutes. Drain."},
      {text:"Cut wings and legs off rotisserie chicken. Skin and bone wings and legs; chop or shred dark meat into bite-size pieces."},
      {text:"Melt butter in a large Dutch oven over medium heat. Whisk in flour gradually until a thick paste forms. Cook until golden, about 1 minute. Pour in milk, whisking constantly, until thickened and bubbling, about 5 minutes. Continue to cook until sauce is smooth, about 1 minute more. Reduce heat and season sauce with black pepper."},
      {text:"Stir Cheddar and Monterey Jack cheese into the sauce until melted and combined. Stir in hot sauce, adjusting to reach desired level of spiciness. Add blue cheese, chicken, and macaroni; mix well to combine."}
    ]
  },
  {
    title: "Delicious Ham and Potato Soup",
    time: 45,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"potato"},
        quantity:"3 1/2 cups peeled and diced"
      },
      {
        ingredient_attributes:{title:"celery"},
        quantity:"1/3 cup diced"
      },
      {
        ingredient_attributes:{title:"onion"},
        quantity:"1/3 cup finely chopped"
      },
      {
        ingredient_attributes:{title:"ham"},
        quantity:"3/4 cup diced cooked"
      },
      {
        ingredient_attributes:{title:"water"},
        quantity:"3 1/4 cups"
      },
      {
        ingredient_attributes:{title:"chicken bouillon granules"},
        quantity:"2 tablespoons"
      },
      {
        ingredient_attributes:{title:"salt"},
        quantity:"2 tablespoons"
      },
      {
        ingredient_attributes:{title:"black pepper"},
        quantity:"1 teaspoon ground"
      },
      {
        ingredient_attributes:{title:"butter"},
        quantity:"5 tablespoons"
      },
      {
        ingredient_attributes:{title:"all-purpose flour"},
        quantity:"5 tablespoons"
      },
      {
        ingredient_attributes:{title:"milk"},
        quantity:"2 cups"
      }
    ],
    directions_attributes: [
      {text:"Combine the potatoes, celery, onion, ham and water in a stockpot. Bring to a boil, then cook over medium heat until potatoes are tender, about 10 to 15 minutes. Stir in the chicken bouillon, salt and pepper."},
      {text:"In a separate saucepan, melt butter over medium-low heat. Whisk in flour with a fork, and cook, stirring constantly until thick, about 1 minute. Slowly stir in milk as not to allow lumps to form until all of the milk has been added. Continue stirring over medium-low heat until thick, 4 to 5 minutes."},
      {text:"Stir the milk mixture into the stockpot, and cook soup until heated through. Serve immediately."}
    ]
  },
  {
    title: "KISS Salmon",
    time: 45,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"salmon filet"},
        quantity:"6 ounce"
      },
      {
        ingredient_attributes:{title:"barbeque sauce"},
        quantity:"1/4 cup"
      },
      {
        ingredient_attributes:{title:"raspberry jam"},
        quantity:"1/4 cup"
      }
    ],
    directions_attributes: [
      {text:"Preheat oven to 400 degrees F (200 degrees C)."},
      {text:"Grease an 11x7-inch baking dish."},
      {text:"Place the salmon fillets into the prepared baking dish with skin sides down."},
      {text:"Stir the barbeque sauce and raspberry jam together in a small bowl."},
      {text:"Generously brush the mixture over the salmon."},
      {text:"Bake in the preheated oven until the salmon is opaque and flakes easily with a fork, 35 to 40 minutes. Brush again with the sauce mixture after the first 15 minutes of baking time."}
    ]
  },
  {
    title: "Cabbage Rolls II",
    time: 570,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"cabbage"},
        quantity:"12 leaves"
      },
      {
        ingredient_attributes:{title:"white rice"},
        quantity:"1 cup cooked"
      },
      {
        ingredient_attributes:{title:"egg"},
        quantity:"1 beaten"
      },
      {
        ingredient_attributes:{title:"milk"},
        quantity:"1/4 cup"
      },
      {
        ingredient_attributes:{title:"onion"},
        quantity:"1/4 cup minced"
      },
      {
        ingredient_attributes:{title:"ground beef"},
        quantity:"1 pound"
      },
      {
        ingredient_attributes:{title:"salt"},
        quantity:"1 1/4 teaspoons"
      },
      {
        ingredient_attributes:{title:"black pepper"},
        quantity:"1 1/4 teaspoons ground"
      },
      {
        ingredient_attributes:{title:"tomato sauce"},
        quantity:"8 ounce"
      },
      {
        ingredient_attributes:{title:"brown sugar"},
        quantity:"1 tablespoon"
      },
      {
        ingredient_attributes:{title:"lemon juice"},
        quantity:"1 tablespoon"
      },
      {
        ingredient_attributes:{title:"Worcestershire sauce"},
        quantity:"1 teaspoon"
      }
    ],
    directions_attributes: [
      {text:"Bring a large pot of water to a boil. Boil cabbage leaves 2 minutes; drain."},
      {text:"In large bowl, combine 1 cup cooked rice, egg, milk, onion, ground beef, salt, and pepper. Place about 1/4 cup of meat mixture in center of each cabbage leaf, and roll up, tucking in ends. Place rolls in slow cooker."},
      {text:"In a small bowl, mix together tomato sauce, brown sugar, lemon juice, and Worcestershire sauce. Pour over cabbage rolls."},
      {text:"Cover, and cook on Low 8 to 9 hours."}
    ]
  }
])
user.save

user = User.create(username: "bbb",email: "bbb@bbb",password: "bbbbbb")
user.recipes.build([
  {
    title: "Melt-In-Your-Mouth Meat Loaf",
    time: 340,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"egg"},
        quantity:"2"
      },
      {
        ingredient_attributes:{title:"milk"},
        quantity:"3/4 cup"
      },
      {
        ingredient_attributes:{title:"bread crumbs"},
        quantity:"2/3 cup seasoned"
      },
      {
        ingredient_attributes:{title:"onion"},
        quantity:"2 teaspoons dried minced"
      },
      {
        ingredient_attributes:{title:"salt"},
        quantity:"1 teaspoon"
      },
      {
        ingredient_attributes:{title:"sage"},
        quantity:"1/2 teaspoon rubbed"
      },
      {
        ingredient_attributes:{title:"mushroom"},
        quantity:"1/2 cup sliced fresh"
      },
      {
        ingredient_attributes:{title:"ground beef"},
        quantity:"1 1/2 pounds"
      },
      {
        ingredient_attributes:{title:"ketchup"},
        quantity:"1/4 cup"
      },
      {
        ingredient_attributes:{title:"brown sugar"},
        quantity:"2 tablespoons"
      },
      {
        ingredient_attributes:{title:"mustard"},
        quantity:"1 teaspoon ground"
      },
      {
        ingredient_attributes:{title:"Worcestershire sauce"},
        quantity:"1/2 teaspoon"
      }
    ],
    directions_attributes: [
      {text:"Combine eggs, milk, bread crumbs, onion, salt, sage, and mushrooms in a large bowl. Crumble ground beef over mixture and stir well to combine. Shape into a round loaf; place in a 5-quart slow cooker. Cover and cook on Low until a meat thermometer reads 160 degrees F (71 degrees C), 5 to 6 hours."},
      {text:"Whisk ketchup, brown sugar, mustard, and Worcestershire sauce in a small bowl; spoon sauce over meat loaf. Return to slow cooker and cook on Low until heated through, about 15 minutes. Let stand 10 minutes before cutting."}
    ]
  },
  {
    title: "Maryland Crab Cakes II",
    time: 35,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"crabmeat"},
        quantity:"1 pound shredded"
      },
      {
        ingredient_attributes:{title:"bread crumbs"},
        quantity:"1 1/2 tablespoons dry"
      },
      {
        ingredient_attributes:{title:"parsley"},
        quantity:"2 teaspoons chopped fresh"
      },
      {
        ingredient_attributes:{title:"egg"},
        quantity:"1"
      },
      {
        ingredient_attributes:{title:"mayonnaise"},
        quantity:"1 1/2 tablespoons"
      },
      {
        ingredient_attributes:{title:"mustard"},
        quantity:"1/2 teaspoon ground dry"
      },
      {
        ingredient_attributes:{title:"hot pepper sauce"},
        quantity:"1 dash"
      }
    ],
    directions_attributes: [
      {text:"Preheat oven broiler."},
      {text:"Mix together crabmeat, bread crumbs, parsley, salt and pepper."},
      {text:"Beat together egg, mayonnaise, hot sauce and mustard. Combine with other ingredients and mix well. Form into patties and place on a lightly greased broiler pan or baking sheet."},
      {text:"Broil for 10 to 15 minutes, until lightly brown."}
    ]
  },
  {
    title: "Roast Sticky Chicken-Rotisserie Style",
    time: 550,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"salt"},
        quantity:"4 teaspoons"
      },
      {
        ingredient_attributes:{title:"paprika"},
        quantity:"2 teaspoons"
      },
      {
        ingredient_attributes:{title:"onion powder"},
        quantity:"1 teaspoon"
      },
      {
        ingredient_attributes:{title:"thyme"},
        quantity:"1 teaspoon dried"
      },
      {
        ingredient_attributes:{title:"white pepper"},
        quantity:"1 teaspoon"
      },
      {
        ingredient_attributes:{title:"cayenne pepper"},
        quantity:"1/2 teaspoon"
      },
      {
        ingredient_attributes:{title:"black pepper"},
        quantity:"1/2 teaspoon"
      },
      {
        ingredient_attributes:{title:"garlic powder"},
        quantity:"1/2 teaspoon"
      },
      {
        ingredient_attributes:{title:"onion"},
        quantity:"2 quartered"
      },
      {
        ingredient_attributes:{title:"chicken"},
        quantity:"4 pound whole"
      }
    ],
    directions_attributes: [
      {text:"In a small bowl, mix together salt, paprika, onion powder, thyme, white pepper, black pepper, cayenne pepper, and garlic powder. Remove and discard giblets from chicken. Rinse chicken cavity, and pat dry with paper towel. Rub each chicken inside and out with spice mixture. Place 1 onion into the cavity of each chicken. Place chickens in a resealable bag or double wrap with plastic wrap. Refrigerate overnight, or at least 4 to 6 hours."},
      {text:"Preheat oven to 250 degrees F (120 degrees C)."},
      {text:"Place chickens in a roasting pan. Bake uncovered for 5 hours, to a minimum internal temperature of 180 degrees F (85 degrees C). Let the chickens stand for 10 minutes before carving."}
    ]
  },
  {
    title: "Baked Brunch Omelet",
    time: 75,
    recipe_ingredients_attributes: [
      {
        ingredient_attributes:{title:"white bread"},
        quantity:"1 pound cubed"
      },
      {
        ingredient_attributes:{title:"Cheddar cheese"},
        quantity:"1 1/2 pounds shredded"
      },
      {
        ingredient_attributes:{title:"ham"},
        quantity:"1 cup cubed cooked"
      },
      {
        ingredient_attributes:{title:"egg"},
        quantity:"8"
      },
      {
        ingredient_attributes:{title:"milk"},
        quantity:"2 cups"
      },
      {
        ingredient_attributes:{title:"salt"},
        quantity:"1 pinch"
      },
      {
        ingredient_attributes:{title:"hot pepper sauce"},
        quantity:"1 dash"
      },
      {
        ingredient_attributes:{title:"green onion"},
        quantity:"1/4 cup chopped"
      }
    ],
    directions_attributes: [
      {text:"Preheat oven to 350 degrees F (175 degrees C). Lightly grease a 9x13 inch baking pan."},
      {text:"Place half of the bread cubes on bottom of baking pan. Sprinkle with half of the ham and then half of the cheese; repeat."},
      {text:"In a large bowl, beat together eggs, milk, salt, hot sauce and green onions. Pour egg mixture into pan."},
      {text:"Place pan on top of a baking sheet with a rim and place in oven. Pour water into baking sheet and bake for 60 minutes, or until eggs have set."}
    ]
  }
])
user.reports.build([
  {
    recipe: Recipe.find(2),
    rate: 5,
    comment: "Not a mac and cheese fan and never have been but I am a huge fan of the buffalo flavor and decided to give this a try. Excellent!"
  },
  {
    recipe: Recipe.find(3),
    rate: 5,
    comment: "I will NEVER use another potato soup recipe , this ones perfect!"
  },
  {
    recipe: Recipe.find(4),
    rate: 4,
    comment: "Four stars - five for the ease of preparation but lowered the rating b/c of the lack of specification of barbeque sauce."
  },
  {
    recipe: Recipe.find(5),
    rate: 5,
    comment: "We all really enjoyed these!"
  }
])
user.save

user = User.create(username: "ccc",email: "ccc@ccc",password: "cccccc")
user.reports.build([
  {
    recipe: Recipe.find(2),
    rate: 3,
    comment: "I think it would have worked if I didn't add the blue cheese, that flavour overwhelmed everything else."
  },
  {
    recipe: Recipe.find(3),
    rate: 3,
    comment: "one teaspoon of pepper in this recipe is way too much for my taste."
  },
  {
    recipe: Recipe.find(4),
    rate: 1,
    comment: "super easy, but not my taste"
  },
  {
    recipe: Recipe.find(5),
    rate: 5,
    comment: "This recipe is really just okay, but could be tweaked to make it better."
  },
  {
    recipe: Recipe.find(6),
    rate: 5,
    comment: "Tastie and easy to make. The sauce tops it off just right. This ones a keeper."
  },
  {
    recipe: Recipe.find(7),
    rate: 4,
    comment: "Might want to add an extra egg to help with the consistency otherwise it was awesome."
  },
  {
    recipe: Recipe.find(8),
    rate: 5,
    comment: "My family loves this chicken. I cook it in my showtime rotisserie oven and it turn out wonderful every time."
  },
  {
    recipe: Recipe.find(9),
    rate: 4,
    comment: "This is pretty good, I added a can or ortega chilies and some chopped red bell pepper."
  }
])
user.save

user = User.create(username: "ddd",email: "ddd@ddd",password: "dddddd")
user.reports.build([
  {
    recipe: Recipe.find(2),
    rate: 5,
    comment: "Great dish!"
  },
  {
    recipe: Recipe.find(3),
    rate: 4,
    comment: "I LOVE this!"
  },
  {
    recipe: Recipe.find(4),
    rate: 5,
    comment: "SO yummy!"
  },
  {
    recipe: Recipe.find(5),
    rate: 1,
    comment: "Cooked as is and was terrible!"
  },
  {
    recipe: Recipe.find(6),
    rate: 5,
    comment: "absolutely delicious."
  },
  {
    recipe: Recipe.find(7),
    rate: 5,
    comment: "These were excellent crab cakes!"
  },
  {
    recipe: Recipe.find(8),
    rate: 4,
    comment: "Simple, flavorful, juicy just good chicken"
  },
  {
    recipe: Recipe.find(9),
    rate: 1,
    comment: "Too mushy!"
  }
])
user.save

user = User.create(username: "eee",email: "eee@eee",password: "eeeeee")
user.reports.build([
  {
    recipe: Recipe.find(2),
    rate: 5
  },
  {
    recipe: Recipe.find(3),
    rate: 4
  },
  {
    recipe: Recipe.find(4),
    rate: 1
  },
  {
    recipe: Recipe.find(5),
    rate: 2
  },
  {
    recipe: Recipe.find(6),
    rate: 5
  },
  {
    recipe: Recipe.find(7),
    rate: 3
  },
  {
    recipe: Recipe.find(8),
    rate: 2
  },
  {
    recipe: Recipe.find(9),
    rate: 1
  }
])
user.save
