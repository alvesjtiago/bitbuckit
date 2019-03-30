# Bitbuckit 💎

Ruby kit for the Bitbucket API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bitbuckit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bitbuckit

## Usage

```ruby
# Set access_token retrieved via OAuth
client = Bitbuckit::Client.new(:access_token => '[personal_access_token]!')

# Get information about the current logged in Bitbucket user
client.user
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alvesjtiago/bitbuckit.

## Acknowledgements

This gem is heavily inspired by the [Octokit](https://github.com/octokit/octokit.rb) gem for GitHub.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).