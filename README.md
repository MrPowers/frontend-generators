# FrontendGenerators

The FrontendGenerators gem lets you easily copy the Bootstrap & Font Awesome css, js, and fonts directly into your application.  Most people use [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails) and [font-awesome-rails](https://github.com/bokmann/font-awesome-rails) to access these frontend libraries in their code, but I find it much easier to just have the code in my own applications.  It's easier to examine the source code when it's in your application and you can avoid frusterating Rails asset pipeline bugs with this straightforward setup.  Annoying bugs are what motivated me to create this gem in the first place.

## Installation

Add this line to your application's Gemfile (the `require: false` part is important):

```ruby
gem 'frontend-generators', require: false
```

And then execute:

    $ bundle

Update your `Rakefile` with this code:

```ruby
require "frontend_generators"
load 'tasks/add_assets.rake'
```

## Moving Bootstrap Code to Your Application

To move the Bootstrap files into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:bootstrap
```

Go to `application.css` and add this line:

```css
*= require bootstrap
```

Go to `application.js` and add this line:

```javascript
//= require bootstrap
```

## Moving Font-Awesome Code to Your Application

To move the Font-Awesome files into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:font_awesome
```

Go to `application.css` and add this line:

```css
*= require font_awesome
```

## Moving Start Bootstrap Stylish Portfolio Code to Your Application

To move the [Start Bootstrap Stylish Portfolio](http://ironsummitmedia.github.io/startbootstrap-stylish-portfolio/) into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:stylish_portfolio
```

Add the route to `routes.rb`:

```ruby
get 'stylish_portfolios/index'
```

You may have to go to `config/initializers/assets.rb` and add this line:

```ruby
Rails.application.config.assets.precompile += %w( stylish_portfolio_manifest.css stylish_portfolio_manifest.js )
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MrPowers/frontend-generators.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

