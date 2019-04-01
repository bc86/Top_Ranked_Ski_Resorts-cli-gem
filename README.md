# TopRankedSkiResorts

This is a simple Ruby CLI Gem that scrapes a ranked list of the best ski resorts in North American from zrankings.com. Then you have the option to choose a resort from the list that will then give you details about the resort and mountain. Things like name of resort, vertical drop, snowfall amounts, acreage and pure awesomeness factor score.

## Installation Instructions -

Add this line to your application's Gemfile:

```ruby
gem 'top_ranked_ski_resorts'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install top_ranked_ski_resorts

## Usage - 

Type the below and then follow the onscreen prompts
	
	$ top_ranked_ski_resorts

## Importan Gems for App - 
* `nokogiri` - used to parse ranking HTML page

## Development - 

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bc86/top_ranked_ski_resorts. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

