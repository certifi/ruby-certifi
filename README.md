# Certifi: Ruby SSL Certificates

This installable Rubygem contains a CA Bundle that you can reference in your Ruby code. This is useful for verifying HTTP requests, for example.

This is CA Bundle is derived from Mozilla Firefox's canonical set.

## Installation

Add this line to your application's Gemfile:

    gem 'certifi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install certifi

# Usage

To reference the installed CA Bundle, you can use the built-in function:

    > require 'certifi'
    > Certifi.where
    => #<Pathname:/home/hone/.gems/ruby/2.1.0/ruby-certifi-14.5.14/lib/certifi/vendor/cacert.pem>

Enjoy!
