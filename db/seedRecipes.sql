-- psql -a -f seedRecipes.sql
\c vegetarian_meals;

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Breakfast','Broccoli Cheddar and Spinach Frittata', 'http://cookieandkate.com/images/2017/02/broccoli-cheddar-frittata.jpg','This spinach, broccoli and cheddar frittata recipe is a simple breakfast, brunch or dinner!');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Breakfast','Tex-Mex Breakfast Bowl', 'http://cookieandkate.com/images/2016/06/breakfast-bowl-with-eggs-black-beans-pico.jpg','Hearty breakfast bowls featuring your favorite Tex-Mex flavors, including fresh pico de gallo, black beans and avocado.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Breakfast','Triple Coconut Granola', 'http://laurencariscooks.com/1_lcc/wp-content/uploads/2017/02/Cacao-Crunch-Granola-1-2-600x600.jpg','This easy homemade coconut granola recipe features coconut flakes, shredded coconut and coconut oil!');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dinner','Sweet Potato and Black Bean Tacos', 'http://cookieandkate.com/images/2017/02/sweet-potato-black-bean-tostadas-recipe.jpg','This vegetarian tostadas recipe features roasted sweet potatoes and healthy "refried" black beans, served on a bed of crisp salad.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dinner','Zucchini Noodles with Basil Pumpkin Seed Pesto','http://cookieandkate.com/images/2016/06/zoodles-with-pesto-and-tomatoes.jpg', 'Fresh, raw zucchini noodles tossed with basil pesto and cherry tomatoes make a light, healthy meal.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dinner','Simple Kale Salad','http://cookieandkate.com/images/2016/05/anything-goes-kale-salad-recipe-2.jpg','This super versatile kale salad features an amazing tahini dressing.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Side','Roasted Carrots with Honey','http://cookieandkate.com/images/2016/03/roasted-carrots-with-honey-butter-recipe.jpg','Simple roasted carrots tossed in a light honey butter sauce makes an incredible side dish!');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Side', 'http://cookieandkate.com/images/2016/10/pesto-pasta-salad.jpg', 'This pesto pasta salad recipe is bursting with fresh flavor.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Side','Roasted Cauliflower', 'http://cookieandkate.com/images/2016/10/roasted-cauliflower-with-parmesan-parsley.jpg', 'So easy to make and oh so yummy!');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dessert','Creamy Peach and Honey Popsicles', 'http://cookieandkate.com/images/2015/08/peach-popsicles-5.jpg', 'These cold, creamy treats are perfect for summertime.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dessert','Salted Oat Fudge', 'http://cookieandkate.com/images/2014/12/healthy-fudge-recipe.jpg', 'It tastes like a cross between fudge and no-bake cookies.');

INSERT INTO recipes (meal, name, image_url, description) VALUES ('Dessert','Chocolate Peppermint Cups', 'http://cookieandkate.com/images/2017/02/honey-sweetened-chocolate-peppermint-cups-3.jpg', 'These dark chocolate treats are fun and easy to make!');
