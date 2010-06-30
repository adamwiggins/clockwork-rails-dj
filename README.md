Sample Clockwork App (Rails/DJ)
===============================

[Clockwork](http://github.com/adamwiggins/clockwork) is a library to replace
cron for scheduling jobs from within an application.  This is a sample
application which uses the Rails 3 web framework, a SQLite database, and the
Delayed Job queueing system to demonstrate Clockwork's use.

The app fetches the Dow Jones index from Google Finance once every three
minutes, and puts the results in the SQLite database.  The web app shows the
history of all fetched data points.

Prerequistes
------------

* Ruby
* Bundler (gem install bundler)
* SQLite3 (brew install sqlite)

Setup
-----

    $ git clone git://github.com/adamwiggins/clockwork-rails-dj.git
    $ cd clockwork-rails-dj
    $ bundle install
    $ bundle exec rake db:migrate

Running the app
---------------

    $ bundle exec rails server &
    $ bundle exec rake jobs:work & 
    $ bundle exec clockwork app/clock.rb &

Alternately, use [Foreman](http://github.com/ddollar/foreman) (gem install foreman):

    $ foreman start

Visit http://localhost:3000/ and you should see the first data point.

