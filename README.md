# i_heart_quotes 

![Travis Status](https://secure.travis-ci.org/robertodecurnex/i_heart_quotes.png?branch=master) - ![Dependecies Status](https://gemnasium.com/robertodecurnex/i_heart_quotes.png) - [![Code Climate](https://codeclimate.com/github/robertodecurnex/i_heart_quotes.png)](https://codeclimate.com/github/robertodecurnex/i_heart_quotes)

I <3 Quotes Client

## Overview

This is a ruby client to interact with the [I <3 Quotes](http://iheartquotes.com) [API](http://iheartquotes.com/api).

(Working on Ruby 1.9.X - Let me know if you need the 1.8.X version)

## Full Documentation

http://rdoc.info/gems/i_heart_quotes/frames

## Authors

Roberto Decurnex (nex.development@gmail.com)

## Install

If you are using Bundler you can easily add the following line to your Gemfile:
    
    gem 'i_heart_quotes'

Or you can just install it as a ruby gem by running:
            
    $ gem install i_heart_quotes

## Download

You can also clone the project with Git by running:
    $ git clone git://github.com/robertodecurnex/rack-jsonp-middlewarei

## Usage Example

### Getting a random quote

    require 'i_heart_quotes'

    fortune  = IHeartQuotes::Client.random

    fortune.quote #=> "One's never alone with a rubber duck."

    fortune.source #=> "hitchhiker"

    fortune.tags #=> ["hitchhiker"]

    fortune.link #=> "http://iheartquotes.com/fortune/show/7934"

### Using filters

    require 'i_heart_quotes'
 
    # Returns a quote from the hitchhiker that has a single line.
    IHeartQuotes::Client.where(:source => "hitchhiker", :max_lines => 1).random

    # Returns a quote from the either hitchhiker or cryptonomicon that has at most 2 lines.
    # Note that you can chain as many where s as you want.
    IHeartQuotes::Client.where(:source => "hitchhiker+cryptonomicon").where(:max_lines => 2).random

## Supported Filters

* **:source** ("+" separated list of desired sources. Available sources at http://iheartquotes.com/api)
* **:max_lines** (maximum number of lines in the quote)
* **:min_lines** (minumum number of lines in the quote)
* **:max_characters** (maximum number of characters in the quote)
* **:min_characters** (minimum number of characters in the quote)


