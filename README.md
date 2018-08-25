# SkipTasks::Rails

Disable Active Record destructive DB rake tasks in all environments except development/test.  Following rails tasks are disabled.

- db:create
- db:drop
- db:fixtures:load
- db:schema:load
- db:seed
- db:sessions:create
- db:setup
- db:structure:load
- test:all:db
- test:db


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'skip_tasks-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install skip_tasks-rails

## Usage

Running any of the above tasks in any environment other then development will raise an exception with with message
`You cannot run this in production`

## Warning
Hot off the press.   Way too many TODOs.  Use at your own risk.

### Todos
- Configurable tasks
- Configurable environments
- Tests


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/codetheoryio/skip_tasks-rails](https://github.com/codetheoryio/skip_tasks-rails).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
