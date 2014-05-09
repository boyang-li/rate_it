RateIt
==============

RateIt allows you to rate/comment on your favourite books, movies and albums. You can also search/browse for the average rating and comments from other people.

Hardware and Software Requirements
----------------------------------

- Ruby (2.1.1)
- Ruby on Rails (4.1.0rc1)
- SQL Database (MySQL)

Installation Instructions
-------------------------

1. Get a copy of the code from the remote repository and place it into local repository:

		git clone "https://github.com/boyang-li/openshop.git"

2. Bundle gems:

		bundle install

	if using `rbenv` to manage ruby environments

		rbenv rehash

3. Setup database:  

	If using MySQL, create an empty database, and then modify config/database.yml file to match your database settings.

	Run migrations:

	  `rake db:migrate`

	Populate testing data

	  `rake db:seed`

Initial Application Setup
-------------------------

Features
--------