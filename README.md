# codez

A collection of various mappings, such as fips to zip.

## Zip to Fips

Usage:

```ruby
require "codez"

Codez::Fips.from_zip("14410")
# => "36055"
```

## Contributing to codez

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Adding missing zip codes

If a state is missing in the zip_to_fips.json file,
* Get zip data from [here](http://www.unitedstateszipcodes.org/zip-code-database).
* Use this data to get a mapping between zip code and county name.
* Match the county name it its zip code using something like [this](http://www.epa.gov/enviro/html/codes/or.html).

## Copyright

Copyright (c) 2013 David Huie. See LICENSE.txt for
further details.
