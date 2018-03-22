# Simp

Simp is NOT A WEB FRAMEWORK.

Simp is something for really tiny app or beginer to learn web development.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simp

## Usage

1. In your app directory, create a file named Gemfile for bundle

2. create 'config.ru' file and copy the following code:

```ruby
require 'simp'
run Simp::Application.new

```
3. create your app files ending with 'html.erb'

```
$ touch index.html.erb

```

For example:

```erb
#index.html.erb

<%
@hello = "hello"
@world = "world"
%>
<html>
  <head>
    <title>Simp is not a web framework.</title>
  <head>
  <body>
     <%= @hello + ", " + @world %>
  </body>
</html>
```
4. `rackup`

5. Browser your web app in `http://localhost:9292`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/simp.
