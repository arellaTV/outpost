#Outpost
[![Build Status](https://travis-ci.org/SCPR/outpost.png)](https://travis-ci.org/SCPR/outpost)

A Rails Engine for quickly standing up a CMS for a Newsroom.

## Dependencies
* `rails >= 3.2` (not tested on rails 4 yet)
* `ruby >= 1.9.2`

## Usage
Add `gem 'outpost', github: 'SCPR/outpost'` to your Gemfile.

More documentation to come.

## Todo
A ton of stuff. Here is a sampler:

* Generators for resources (models, controllers).
* Add record versioning (needs to be extracted from the SCPRv4 app).
* Make the engine's layout actually work.
* Documentation... oh man, the documentation...

## Contributing
Pull Requests are encouraged! This engine was built specifically for KPCC, 
so its flexibility is limited... if you have improvements to make, please 
make them.

Fork it, make your changes, and send me a pull request.

Run tests with `bundle exec rake test`
