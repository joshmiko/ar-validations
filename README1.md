## How would you return all the recipes in your database?
Recipe.all

## How would you return all the comments in your database?
Comment.all

## How would you return the most recent recipe posted in your database?
Recipe.last

## How would you return all the comments of the most recent recipe in your database?
recent_recipe = Recipe.last
recent_recipe.comments

## How would you return the most recent comment of all your comments?
Comment.last

## How would you return the recipe associated with the most recent comment in your database?
recent_comment = Comment.last
recent_comment.recipe

## How would you return all comments that include the string brussels in them?
Comment.where('content LIKE ?', '%brussels%').all
_____________________________________________________________________________________

## Validate that the title of each recipe exists.
```no-highlight

r = Recipe.first
r.name = nil
r.save

r.errors
```

## Validate that the title of each recipe is unique.
```no-highlight

r = Recipe.last
r.name = "Brussels Chocolate"
r.save

r.errors
```

## Validate that the title of each recipe contains "Brussels sprouts" in it.
```no-highlight

r = Recipe.last
r.name = "nope"
r.save

r.errors
```

## Validate that the length of a comment be a maximum of 140 characters long.
```no-highlight

c = Comment.last
c.content = "chicky check yo self before you wreck yo self, this is a long comment that will break the app you feel me, yeah that's what I mean, why am I talking like this, I think this is long enough"
c.save

c.errors
```

## Validate that a comment has a recipe.
```no-highlight

r = Recipe.last
r.recipe_id = nil
r.save

r.errors
```

## Add a field servings to your Recipe table. This field is optional, but if supplied, it must be greater than or equal to 1. Write a validation for this.
```no-highlight

r = Recipe.last
r.servings = 0
r.save

r.errors
```
