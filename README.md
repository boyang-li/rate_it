RateIt
==============

RateIt allows you to rate and browse on your favourite books.

Hardware and Software Requirements
----------------------------------

- Ruby (2.1.1)
- Ruby on Rails (4.1.0)
- SQLite3 (come with Ruby gem)

Installation Instructions
-------------------------

1. Get a copy of the code from the remote repository and place it into local repository:

		git clone "https://github.com/boyang-li/rate_it.git"

2. In the app directory, run Bundle commands to install gems:

		bundle install

3. Run Rake commands to setup database:  

	Run migrations:

	  `rake db:migrate`

	Populate testing data

	  `rake db:seed`
	  
4. Run server, and app will be running at 'localhost:3000'

	  `rails server`
