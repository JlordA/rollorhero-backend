# Roll or Hero API

Welcome to the Roll or Hero Rail API backend.  This rails API holds the database for the react based Roll or Hero front end.  The server database archives sandwiches reviews and delis located in New York City.  


## Architecture and models

The 6 models represented here include:
* Users / Delis / Sandwichs
* Likes / Reviews / Deli_Sandwiches (Join Tables)  

This API utilizes serializers to minimize the number of fetch requests necessary from the front end.

## Gem files of Importance:

* Ruby Rails version 6

* bcrypt

* postgresql 2.0

* faker

* active-model-serializers

* rack-cors

## To Run
**Setup**
* git clone git@github.com:JlordA/rollorhero-backend.git
* cd rollorhero-backend

**To start the Client:**
* bundle install or yarn
* bundle start or yarn

The client is running on http://localhost:4000/

**To start the Server:**
* rails s
