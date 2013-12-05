# SpreeTextacularSearch

Search products using textacular.

https://github.com/textacular/textacular

Installation
------------

Add spree_textacular_search to your Gemfile:

```ruby
gem 'spree_textacular_search', github: 'Hates/spree_textacular_search'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
bundle exec rails g spree_textacular_search:install
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_textacular_search/factories'
```
