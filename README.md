# Rollenspielsache::Bot

The rollenspielsache-bot is a frontend for both [`librollenspielsache`](https://github.com/deciduously/librollenspielsache) and [`rollenspielsache-svc`](https://github.com/deciduously/rollenspielsache-svc).

This is a WIP, there's very little actually here yet.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rollenspielsache-bot'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rollenspielsache-bot

You'll need to place a file at `.env` containing your API token:

```
API_TOKEN=Klhjkjlghsdkjhfskfiefgi7h42879rthwieuqcry3908
```

## Usage

Run the bot with `rake run`.

* `! roll 1d6+8` | `! r 1d6+8`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deciduously/rollenspielsache-bot.

