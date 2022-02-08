# API POKEMONS

### Ruby version
2.5.8

### Rails version
5.1.7


### Database creation
To import Pokemon list and setup enviroment Developer, run task dev:setup:

```bash
rails dev:setup
```


### Database creation for tests cases
```bash
rails dev:setup RAILS_ENV=test
```

### How to run the test suite
To test all API calls using RSpec, just run inside the project folder:
```bash
rspec
```


### API Pokemon On-line
The API is temporarily available online at [https://stark-falls-15051.herokuapp.com/pokemons](https://stark-falls-15051.herokuapp.com/pokemons)

### *Postman Request Examples* 
Just import to Postman the file inside */vendor* folder. 

For tests in production (online): *API Pokemon Prod.postman_collection.json* 

For testing in dev (local): *API Pokemon Dev.postman_collection.json*
