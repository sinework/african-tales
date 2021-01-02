# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization
# African tales, a blog website about African stories

> This is a Ruby on Rails Capstone project in Microverse's rails curriculum, to build a Ruby on Rails application where people can write articles. Find the project description [here](https://www.notion.so/Lifestyle-articles-b82a5f10122b4cec924cd5d4a6cf7561#55d51338627b42bd95d86e2d1e58f105).

> This website is created to allow users to view, create,  and store articles about african stories. .


[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]


# See the Live version here - > [Live Link]()

### Landing Interface
<img src="./app/assets/images/Landing.png" width="auto" height="auto" />

### Login Interface
<img src="./app/assets/images/Login.png" width="auto" height="auto" />

### New article creating Interface
<img src="./app/assets/images/newarticle.png" width="auto" height="auto" />

# Built With

- Ruby v2.7.0
- Ruby on Rails v6.0.3
- HTML
- CSS
- Bootstrap
- Carrierwave
- Cloudinary
- Omniauth
- Rspec
- Capybara
- Bcrypt
- Rubocop

# Features
- Login or sign up 
- Access the available categories
- Vote for Articles
- See the highest voted article in the index page

# Prerequisites

- Ruby: 2.7.1
- Rails: 6.0
- Postgres: >=9.5

# Getting Started

### Get a local copy

`$ git clone git@github.com:sinework/african-tales.git`

### Initial Setup

- Go to the local repo and run `bundle install`
- Updaate your yarn if its out of date with `yarn install --check-files`
- Install bootstrap with ```yarn add bootstrap jquery popper.js```

### Database Setup:
- First run `rails db:create`
- Then run `rails db:migrate`

### Start server:
- Run `rails server`

- Go to `http://localhost:3000/`

-  Login with github and google will only work in the live version because the api keys are not available publicly.


# Run tests
- Run `rails db:migrate RAILS_ENV=test`

- Run  ```bundle exec rspec ``` to run the tests.


# Author

👤 **Sinework Amare Shiferaw**

- Github: [@sinework](https://github.com/sinework)

- LinkedIn: [LinkedIn](https://www.linkedin.com/in/sinework-amare-shiferaw/)
- Twitter: [Twitter](https://twitter.com/SineworkAmare)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Berabjesus/Ethiopia-on-Rails/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- Heroku
- Nelson Sakwa, The designer of the [Lifestyle Articles](https://www.behance.net/gallery/14554909/liFEsTlye-Mobile-version)

## 📝 License

None


[forks-shield]: https://img.shields.io/github/forks/sinework/african-tales
[forks-url]:https://github.com/sinework/african-tales/network/members
[stars-shield]: https://img.shields.io/github/stars/sinework/african-tales
[stars-url]: https://github.com/sinework/african-tales/stargazers
[issues-shield]: https://img.shields.io/github/issues/sinework/african-tales
[issues-url]: https://github.com/Berabjesus/Ethiopia-on-Rails/issues


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
