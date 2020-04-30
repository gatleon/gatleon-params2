![gatleon-params2](https://raw.githubusercontent.com/gatleon/gatleon-params2/master/gatleon-opensource.png)

# gatleon-params2

remove action and controller from your rails params

## Installation

add this line to your application's Gemfile:

```ruby
gem "gatleon-rails"
```

and then execute:

```
$ bundle install
```

add to your application_controller.rb

```ruby
class ApplicationController < ActionController::Base
  include Gatleon::Params2
  ...

  def some_action
    params2 # access params2 (query and post params from request - but without action, controller keys.)
  end
end
```

## License

the gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
