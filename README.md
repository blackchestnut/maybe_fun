# MaybeFun
[![Build status](https://secure.travis-ci.org/blackchestnut/maybe_fun.png)](https://travis-ci.org/#!/blackchestnut/maybe_fun/builds)
[![Code Climate](https://codeclimate.com/github/blackchestnut/maybe_fun/badges/gpa.svg)](https://codeclimate.com/github/blackchestnut/maybe_fun)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'maybe_fun'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install maybe_fun

## Usage

```
' foo   '.with(&:strip) # => 'foo'
nil.with(&:strip)       # => nil
```

```
'foo'.do { puts 'bar' }
# bar
# "foo"

nil.do { puts 'bar' }
# nil
```

```
true.if_true { puts 'baz' }
# baz
# true

false.if_true { puts 'baz' }
# false
```

```
false.if_false { puts 'quux' }
# quux
# true

true.if_false { puts 'quux' }
# true
```

```
1.if_nil { puts 'bat' }
# 1

nil.if_nil { puts 'bat' }
# bat
# true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/blackchestnut/maybe_fun. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

