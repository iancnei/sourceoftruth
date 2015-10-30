# Source of Truth (working title)

## Table of Contents

  * [What is Source of Truth (working title)?](#what-is-source-of-truth-(working-title)?)
  * [What technologies will be used?](#what-technologies-will-be-used?)
  * [Goals](#goals)
  * [How to set up the website?](#how-to-set-up-the-website?)
  * [Heroku Link](#Heroku Link)
  * [Prototyping](#prototyping)
  	* [Wireframes](#wireframes)
  		* [Minimum Viable Product](#minimum-viable-product)
  		* [Stretch: Single Page](#stretch-single-page)
  		* [Stretch: User](#stretch-user)
  	* [Entity Relationship Diagram](#entity-relationship-diagram)
  	* [User Stories](#user-stories)

## What is Source of Truth (working title)?

![v1 screenshot](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/screenshots/v1.png)
A website that will serve as a Rosetta Stone for programmers.  Its aim is to show how to write basic programming statements in different languages so that programmers can avoid simple syntax errors.

## What technologies will be used?

Source of Truth (working title) will be made with Ruby on Rails and AngularJS. It will use a PostgreSQL database.

## Goals
**Goals that have been strikethroughed mean that goal has been reached.**
* ~~Basic formatting of code~~
* ~~Data is stored in a database~~
* ~~Search bar to search through all available statements~~
* ~~Links to more information about statements and coding conventions for languages~~
* ~~Single page app~~
* Code has syntax highlighting
* Search bar has autocomplete
* Users can sign up and submit additional examples
* Admin can approve user submitted examples
* Examples can be filtered


## How to set up the website?

Make sure you have [Node Package Manager](https://www.npmjs.com/) installed.

Commands that need to be run in order to install everything:
* `bower install`
* `bundle install`
* `bundle update` (this is just in case the version of sprockets is too new and needs to be reverted back to an older version in order to work with angular-rails-templates)
* `rake db:create`
* `rake db:migrate`
* `rake db:seed`

## Heroku Link

https://sourceoftruth.herokuapp.com/

## Prototyping

### Wireframes

#### Minimum Viable Product

![MVP](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/mvp.png)

#### Stretch: Single Page Search and Results

![Single Page Search](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/1%20page%20search.png)

![Single Page Results](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/1%20page%20results.png)

#### Stretch: Multiple Page User

![Login and Signup](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/login%20and%20signup%20sidebar.png)

![Profile](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/profile.png)

![Edit Profile](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/edit%20profile.png)

![Choose Languages](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/wireframes/choose%20languages.png)

### Entity Relationship Diagram

![ERD](https://raw.githubusercontent.com/inei/sourceoftruth/master/prototyping/erd/erd.png)

### User Stories

https://trello.com/b/ddBCrGYt/source-of-truth
