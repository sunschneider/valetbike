# ValetBike

Smith College CSC223: Introduction to Software Engineering\
Group F (Golden Girls) ValetBike project


### How to Begin
* Create a GitHub account if you don't have one
* Go to [https://github.com/sunschneider/valetbike](https://github.com/sunschneider/valetbike)
* Follow the README instructions to configure your environment

## General Configuration
1. Ensure you have MySQL 8.0.26 downloaded 
* !! Currently unsure if it is necessary!! Various team members have found this to cause an error in the later steps, particularly for step 8, so if you are experiencing any trouble just delete the MySQL you downloaded!!
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
* `git clone https://github.com/sunschneider/valetbike.git`

6. Install gems
* `cd valetbike`
* `bundle install`

7. Set up local database credentials 
* In the valetbike/config/initializers folder, add a new file named "_env.rb". In this file add this:
* ENV['MYSQL_USERNAME']   =   "your username"
* ENV['MYSQL_PASSWORD']   =   "your password"
* ENV['MYSQL_SOCKET'] = your socket, which is "/tmp/mysql.sock" for Mac and "/var/run/mysqld/mysqld.sock" for Windows


8. Prepare databases in MySQL
* `mysql -u root -p`
* `CREATE DATABASE valetbike_development;`

9. Run database migrations
* `service mysql status`
*  Copy the socket path from the terminal under "UNIX socket"
* Paste to the socket in the database.yml under the config folder 
* `rake db:migrate`
* `rails import:stations`
* `rails import:bike`

10. Confirm app runs
* `sudo service mysql start`
* `rackup`
* Open http://localhost:9292 (or http://127.0.0.1:9292) in a browser
* You should see Group F's ValetBike home page
### Functionalities
* Login/Out 
* Create account
* View Stations
* View Interactive Map
* Checkout Bikes
* View Stats page
* Dummy Settings Page
### Exploration Tips
* This prototype has many features. To view them all, first load the website. You will see the Home page. From this page, you can create an account, log in, or view the stations and map. Once you create an account, you will be taken to the logged in home page: the station page. From here you can access many other features via links at the top of the page: your settings (currently a dummy page), the stations and number of bikes, and your current stats (randomly generated upon account creation). From the station pages, you can also access a map of Northampton, MA, with the stations and number of bikes indicated on it. From the stations page you can also check out a bike.
### Changes Since the prototype
* We have made a lot of changes since our prototype. The most obvious one is that we added CSS to our site to make it pretty. We have improved the map functionality too so that it accurately displays stations. It is now also possible to checkout bikes. We have also added a log in/out functionality and a stats page that has randomly generated stats.

### Adding More Stations and Bikes
In the command line, do the following:
 * rails console
 * s = Station.new(name: "Smith College Museum of Art", address: "20 Elm Street", identifier: "92630", latitude: "42.318822", longitude: "-72.636271")
 * s.save
 * b = Bike.new(identifier: "72047")
 * b.current_station = s
 * b.save
 
This will create a new station and a new bike at that station.
