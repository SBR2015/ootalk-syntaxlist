# Ootalk::Syntaxlist

[![Build Status](https://travis-ci.org/SBR2015/ootalk-syntaxlist.svg?branch=master)](https://travis-ci.org/SBR2015/ootalk-syntaxlist)

Syntaxlist for OoTalk.
Syntax is written in natural language, and now it supports English, Japanese, Mandarin Chinese, Vietnamese.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ootalk-syntaxlist'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ootalk-syntaxlist

## Usage

    require 'ootalk-syntaxlist'
	
	list = ootalk::syntaxlist.create(:en)
	puts list

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/SBR2015/ootalk-syntaxlist.
