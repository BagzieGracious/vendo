# Vendo

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/vendo`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'vendo'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install vendo

## Usage

To access the API, you'll need to create a `Vendo::Client`

```ruby
client = Vendo::Client.new()
```

The client then gives you access to each of the resources.

## Resources
you have to first authenticate before you access all resources
```ruby
account = client.account.authenticate('username', 'password')
```

you can easily access account info by
```ruby
info = client.account.info()
info["data"]["attributes"]["email"] `----> this returns account email`
```

you can create a cart by
```ruby
client.cart.create()
```

you can retrieve a cart info by
```ruby
cart = client.cart.retrieve()
cart["data"]["type"] `-----> example of retrieving cart info`
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/vendo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/vendo/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Vendo project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/vendo/blob/master/CODE_OF_CONDUCT.md).
