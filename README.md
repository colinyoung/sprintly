# Sprintly

A client for the Sprintly API

## Installation

Add this line to your application's Gemfile:

    gem 'sprintly'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sprintly

## Usage

1. Configure with your API KEY:

  ```ruby
  Sprintly.api_key = 'sample api key'
  ```
  
2. Access resources:

  ```ruby
  items = Sprintly::Product['99999'].items
  
  # You can pass a hash of parameters to resource methods like 'items'.
  # Incidentally, it's dynamic, so if Sprintly adds resources to their API, this will still work.
  ```
  
3. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
