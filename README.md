# README

Things you may want to cover:

* Ruby version 5.1

Packages Used:
* gem 'bootstrap', '~> 4.0.0.beta2.1'
* gem 'friendly_id', '~> 5.1.0'
* gem 'devise'

This is Tiny Blog
by [Habibur Rahman](http://www.facebook.com/follow.hbrawnak).

## License

All source code in the [Ruby on Rails Tutorial](http://railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
