# Middleman::NpmBuild

Runs a generic `npm` build command after your Middleman site has finished building.

## Installation

Add this line to your Middleman app's `Gemfile`:

    gem 'middleman-npm_build'

And then execute:

    $ bundle install

## Usage

Add this line to your `config.rb`:

`activate :npm_build`

This will run `npm run build` after your Middleman site has finished building.

You can also pass a custom build function (defined in your `package.json` file) as below:

`activate :npm_build, build_command: 'custom_build_function'`

## Contributing

1. Fork it ( https://github.com/jhixson/middleman-npm_build/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
