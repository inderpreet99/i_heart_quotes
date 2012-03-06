# i_heart_quots ![Travis Status](https://secure.travis-ci.org/robertodecurnex/i_heart_quotes.png?branch=master) ![Dependecies Status](https://gemnasium.com/robertodecurnex/i_heart_quotes.png)

I <3 Quotes Client

## Overview

This is a ruby client to interact with the [I <3 Quotes](http://iheartquotes.com) [API](http://iheartquotes.com/api).

(Working on Ruby 1.9.X - Let me know if you need the 1.8.X version)

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
 
