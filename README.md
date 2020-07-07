# WalletGroup
> A app where you can manager your personal cash flow

![screenshot](docs/screenshot.png)

<br>The main point on this project is to deploy a working app, starting from stretch, following the good practices.<br>

## Content

* [Business requirements](#business-requirements)
* [Potential future features](#potential-future-features)
* [Built With](#built-with)
* [Database Diagram](#database-diagram)
* [Getting Start](#getting-start)
* [Contributing](#contributing)
* [Acknowledgments](#acknowledgments)
* [Author](#author)
* [License](#license)

## Business requirements

<ul>
  <p>User</p>
  <li>Create account and make login</li>
  <li>Authenticate with username only</li>
</ul>

<ul>
  <p>Transactions and External transactions</p>
  <li>Display total and a list with all transactions</li>
  <li>Authenticate with username only</li>
</ul>

<ul>
  <p>Groups</p>
  <li>Create groups</li>
  <li>See a list with all groups</li>
  <li>See transactions by groups</li>
</ul>

<ul>
  <p>Design</p>
  <li>Mobile App</li>
</ul>


## Potential future features
<ul>
  <li>Checklist while creating account</li>
  <li>Search button</li>
  <li>Dynamic Navbar</li>
</ul>

## Built With

- Ruby 2.7 <br>
- Ruby on Rails 5.2 <br>
- Postgres and Devise gem (AOT)
- Rubocop (Linter) with Stickler (CI Tool) <br>
- Git, Github and VScode <br>

## Database Diagram
![erd](docs/diagram.png)


## Getting Start

#### Install
To use this program, you will need install:
* Ruby Language - Version 2.6 - [Install guide](https://www.ruby-lang.org/en/documentation/installation/)

* Ruby on Rails - Version 5.2 - [Install guide](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)


#### Get a local copy
Now you need a copy of this application, if you are using Git:
```js
git clone git@github.com:SevlaMare/wallet.git
```
Otherwise just hit (Download Zip) on green button (Clone or Download) at top of this page.


#### Setup

Install all dependencies with:

```
bundle install
```

Setup database with:

```
rake db:schema:load
```
and populate the database with defaults with:
```
rails db:seed
```

#### Run App
To run, from the application folder, just type on terminal:
```js
rails server
```
Now you can go to your favorite web browser like Google Chrome and access the url
<br> http://localhost:3000


#### Test (Remove before merge!)
On terminal type:
```
rake db:test:load
```
It will create database for testing, to run the tests:
```
rspec
```

### Contributing

Contributions, issues and feature requests are welcome!

You can do it on [issues page](issues/).

## Acknowledgments

A special thanks for the code reviewers.

## Author

👤 **Thiago Miranda**

- Github: [@SevlaMare](https://github.com/SevlaMare)
- Twitter: [#SevlaMare](https://twitter.com/SevlaMare)
- Linkedin: [SevlaMare](https://www.linkedin.com/in/sevla-mare)

### License
Design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance.
<br>
<strong>Creative Commons • June 2020</strong>
