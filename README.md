# README

## How to Run

This assumes docker has been installed on your machine

* ```git clone git@github.com:rohithnp/gemnote.git```
* ```cd gemnote```
* ```docker up -d```
* ```docker-compose run web rake db:reset```
* http://localhost:2000/products/Patagonia%20Hybrid%20Jacket


## Project Decisions

I initially wanted to use nodejs to gain more familiarity with it, but I decided
to use Rails as its my day to day framework at my current role.

I understand Rails includes a lot of scaffolding and extra functionality
that this project is not using. For simplicity, I used the base rails generators for prototyping.

I went with a nosql (mongodb) database to store the various products on the
assumption that products will have vastly different attributes and will be hard
to mold into sql schemas and fit into tables.


### Data Format ###

In this product catalog, products can either be a root product or a model of a
root product.

Root products with no models (in this case the coffee dripper and pot)
will have no ```model_type``` field set.

Root products with different models (the jacket and bars), will have ```model_type```
set to indicate what differentiates the products (color or flavor).

Model products will have a ```parent``` field set to indicate that it it is a model
of this product. Model products have their own individual ```sku``` and can override
any information (```quantity```, ```price```, ```features```, etc) of the root/parent model

When selecting a root product, all models will be included in the json under the
```models``` key

Root products contain a ```tags``` field to indicate what type of product aggregation they fall under (drinkware, Women's - Apparel, Food/Beverage)

Each root product can be looked up on the api via the route ```/products/[:name]``` for example
* http://localhost:2000/products/Patagonia%20Hybrid%20Jacket
* http://localhost:2000/products/Kinto%20Carat%20Coffee%20Dripper%20and%20Pot
* http://localhost:2000/products/Dick%20Taylor%20Bars
