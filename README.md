# ValetBike

Smith College CSC223: Introduction to Software Engineering\
Group F (Golden Girls) ValetBike project

### How to Begin
* Create a GitHub account if you don't have one
* Go to [https://github.com/sunschneider/valetbike](https://github.com/sunschneider/valetbike)
* Follow the README instructions to configure your environment

## General Configuration
1. Ensure you have MySQL 8.0.26 downloaded
* Download: https://dev.mysql.com/downloads/mysql
* Choose "Use Legacy Password Encryption"
* After install make sure you add `/usr/local/mysql/bin` (or equivalent) to your path

2. Ensure you have Ruby 3.0.2 installed
* Start here: https://www.ruby-lang.org/en/documentation/installation
* asdf is recommended for *nix systems, more info available on request
* Make sure you are using Ruby 3.0.2 before proceeding

3. Ensure you have Rails 6.1.4 installed
* `gem install rails --version 6.1.4`

4. Ensure you have MySQL gem installed
* `gem install mysql2`

5. Fork & clone ValetBike repo
* Click fork in the upper right hand corner of the ValetBike GitHub page
* `git clone https://github.com/<sunschneider>/valetbike.git`

6. Install gems
* `cd valetbike`
* `bundle install`

7. In the valetbike/config/initializers folder, add a new file named "_env.rb". In this file add this:
* # Set up local database credentials
* ENV['MYSQL_USERNAME']   =   "your username"
* ENV['MYSQL_PASSWORD']   =   "your password"

8. Prepare databases in MySQL
* `mysql -u root -p`
* `CREATE DATABASE valetbike_development;`

9. Run database migrations
* `rake db:migrate`

10. Confirm app runs
* `rackup`
* Open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* You should Group F's ValetBike welcome page

### Exploration Tips
* This prototype has many features. To view them all, first load the website. You will see the Home page. From this page, you can create an account. Once you do, you will be taken to the logged in home page. From here you can access many other features via links: your settings (currently a dummy page), the stations and number of bikes, and your current stats. From the station pages, you can also access a map of Northampton, MA.
