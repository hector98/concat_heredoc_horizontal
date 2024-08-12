# ConcatHeredocHorizontal

Hello and welcome to my gem, this gem is simple but it helped me solve a problem about concatenating two multi-line strings (Heredoc's), since these have line breaks, which make it difficult to position them horizontally, the gem is also capable of concatenating simple strings.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add concat_heredoc_horizontal

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install concat_heredoc_horizontal

## Usage
Examples of use
```ruby
require 'concat_heredoc_horizontal'

a = "Hello
of "
b = " World
Ruby"
c = ConcatHeredocHorizontal.concat_simple(a, b)
puts c

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hector98/concat_heredoc_horizontal. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hector98/concat_heredoc_horizontal/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ConcatHeredocHorizontal project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hector/concat_heredoc_horizontal/blob/main/CODE_OF_CONDUCT.md).
