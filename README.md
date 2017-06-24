# Will You Start The Fans Please

[![Gem Version](https://badge.fury.io/rb/will_you_start_the_fans_please.svg)](http://badge.fury.io/rb/will_you_start_the_fans_please)

An extension for Capistrano 2 to add a bit of 90s-era excitement to your deployment -- to the Crystal Dome!

## Requirements

* Capistrano v2*

* macOS

* A love of 90s television game shows

## Installation

First, add the gem to your `Gemfile`, but set `require` to false:

```
gem 'will_you_start_the_fans_please', :require => false
```

Then in your Capistrano `config/deploy.rb` require the gem:

```
require 'will_you_start_the_fans_please'
```

Finally, turn on your sound, run your deploy as normal and enjoy the music!

```
$ cap deploy
🎶 🎶 🎶
```
