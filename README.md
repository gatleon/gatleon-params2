# Gatleon Params2

remove action and controller from your rails params

## Installation

Add this line to your application's Gemfile:

```ruby
gem "gatleon-rails"
```

And then execute:

```
$ bundle install
```

Add to your application_controller.rb

```
class ApplicationController < ActionController::Base
  include Gatleon::Params2
  ...

  def some_action
    params2 # access params2 (query and post params from request - but without action, controller keys.)
  end
end

```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
