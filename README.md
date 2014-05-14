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

```ruby
> require 'certifi'
> Certifi.where
=> #<Pathname:/home/hone/.gems/ruby/2.1.0/ruby-certifi-14.5.14/lib/certifi/vendor/cacert.pem>
```

You can use this with `net/http` to verify the SSL certificate:

```ruby
require 'uri'
require 'net/https'
require 'certifi'

uri  = URI.parse('https://httpbin.org/')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl     = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
http.ca_file     = Certifi.where
http.start do
  http.request_get(uri.path) do |res|
    puts res.body
  end
end
```

Enjoy!
