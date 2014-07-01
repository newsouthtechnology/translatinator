# Translatinator

![Translatinator](logo.jpg)

## About

Translatinator is a Ruby command-line application that allows you to translate text via Google Translate in your terminal client. Why? Because you can!

## Installation

Add this line to your application's Gemfile:

    gem 'translatinator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translatinator

## Usage

To use Translatinator:
    -lang ............................ Display supported languages and abbreviations.
    -use LANG \"text-to-translate\" .... Translate text (LANG = language abbreviation).
    -help, -menu ..................... Show these commands again.

  Example
    In your terminal client, type the following command:
      translatinator -use fr "Good Morning"

      Result: "Bon Matin"

  NOTE: This is a very young project by a noob developer. Currently the use of '!'s causes bugs that will be fixed in the near future.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/translatinator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
