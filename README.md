# FrontendGenerators

This gem can be used to easily set up a [Start Bootstrap](http://startbootstrap.com/template-categories/all/) theme in your Rails application.  The Start Bootstrap code has fully been modified to follow Rails conventions (Rails partials are awesome!).

The FrontendGenerators gem also lets you easily copy the Bootstrap & Font Awesome css, js, and fonts directly into your application.  Most people use [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails) and [font-awesome-rails](https://github.com/bokmann/font-awesome-rails) to access these frontend libraries in their code, but I find it much easier to just have the code in my own applications.  It's easier to examine the source code when it's in your application and you can avoid frusterating Rails asset pipeline bugs with this straightforward setup.  Annoying bugs are what motivated me to create this gem in the first place.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'frontend-generators'
```

And then execute:

    $ bundle

Update your `Rakefile` with this code:

```ruby
require "frontend_generators"
load 'tasks/add_assets.rake'
```

## Bootstrap

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

The fonts are in the `/public/fonts/` directory because [Rails keeps changing where the fonts should be](http://stackoverflow.com/questions/10905905/using-fonts-with-rails-asset-pipeline) and it is annoying to keep up with all the changes.

## Font-Awesome

To move the Font-Awesome files into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:font_awesome
```

Go to `application.css` and add this line:

```css
*= require font_awesome
```

## [Start Bootstrap Stylish Portfolio](http://ironsummitmedia.github.io/startbootstrap-stylish-portfolio/)

To move the Start Bootstrap Stylish Portfolio theme into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:stylish_portfolio
```

Add the route to `routes.rb`:

```ruby
get 'stylish_portfolios/index'
```

Add this line to `config/initializers/assets.rb`:

```ruby
Rails.application.config.assets.precompile += %w( stylish_portfolio/manifest.css stylish_portfolio/manifest.js )
```

## [Start Bootstrap Creative](http://startbootstrap.com/template-overviews/creative/)

To move the Start Bootstrap Creative theme into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:creative
```

Add the route to `routes.rb`:

```ruby
get 'creatives/index'
```

Add this line to `config/initializers/assets.rb`:

```ruby
Rails.application.config.assets.precompile += %w( creative/manifest.js creative/manifest.css )
```

## [Start Bootstrap Freelancer](http://startbootstrap.com/template-overviews/freelancer/)

To move the Start Bootstrap Freelancer theme into your Rails application, run this rake task:

```ruby
bundle exec rake add_assets:freelancer
```

Add the route to `routes.rb`:

```ruby
get 'freelancers/index'
```

Add this line to `config/initializers/assets.rb`:

```ruby
Rails.application.config.assets.precompile += %w( freelancer/manifest.js freelancer/manifest.css )
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MrPowers/frontend-generators.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

