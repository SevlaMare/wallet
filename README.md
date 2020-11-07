# WalletGroup
> An app where you can manage your cash flow.

![screenshot](docs/screenshot.png)

<br>The main point of this project is to deploy a working app, starting from the stretch, following the good practices.<br>

## Content

* [Live Demo](#live-demo)
* [Business requirements](#business-requirements)
* [Potential future features](#potential-future-features)
* [Built With](#built-with)
* [Database Diagram](#database-diagram)
* [Getting Start](#getting-start)
* [Contributing](#contributing)
* [Acknowledgments](#acknowledgments)
* [Author](#author)
* [License](#license)

## Live Demo
You can access a deployed version of this app:<br>
https://evening-wildwood-86896.herokuapp.com/

## Business requirements

<ul>
  <p>User</p>
  <li>Create an account and make a login</li>
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
  <li>Chart with incomes x outcomes</li>
  <li>Search feature</li>
  <li>Responsive Design</li>
  <li>Checklist while creating an account</li>
</ul>

## Built With

- Ruby 2.6 <br>
- Ruby on Rails 5.2 <br>
- Postgres <br>
- Rubocop and Stylint (Linters) <br>
- GitHub Actions (CI Tool) <br>
- Git, Github and VScode <br>

## Database Diagram
![erd](docs/diagram.png)


## Getting Start

#### Install
To use this program, you will need to install:
* Ruby Language - Version 2.6 - [Install guide](https://www.ruby-lang.org/en/documentation/installation/)

* Ruby on Rails - Version 5.2 - [Install guide](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)


#### Get a local copy
Now you need a copy of this application, if you are using Git:
```js
git clone git@github.com:SevlaMare/wallet.git
```
Otherwise just hit (Download Zip) on the green button (Code) at top of this page.


#### Setup

Install all dependencies with:

```
bundle install
```

Setup database with:

```
rake db:schema:load
```
and populate the database with defaults using:
```
rails db:seed
```

#### Run App
To run, from the application folder, just type on terminal:
```js
rails server
```
Now you can go to your favorite web browser like Google Chrome and access the URL
<br> http://localhost:3000

### Contributing

Contributions, issues and feature requests are welcome!

You can do it on [issues page](issues/).

## Acknowledgments

A special thanks to the code reviewers.

## Author

👤 **Thiago Miranda**

- Github: [@SevlaMare](https://github.com/SevlaMare)
- Twitter: [#SevlaMare](https://twitter.com/SevlaMare)
- Linkedin: [SevlaMare](https://www.linkedin.com/in/sevla-mare)

### License
Design idea by [Gregoire Vella](https://www.behance.net/gregoirevella) on Behance.<br>
<strong>Creative Commons • July 2020</strong>
