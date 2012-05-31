OmniAuth SmugMug
================

This is an [OmniAuth 1.0](https://github.com/intridea/omniauth) strategy for authenticating to SmugMug.

Get a SmugMug API key [here](http://www.smugmug.com/hack/apikeys)


Usage
-----

In a Rack application:

```ruby
use OmniAuth::Builder do
  provider :smugmug, ENV['SMUGMUG_KEY'], ENV['SMUGMUG_SECRET']
end
```

For Rails, put this in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :smugmug, ENV['SMUGMUG_KEY'], ENV['SMUGMUG_SECRET']
end
```


License
-------

Copyright (c) 2012 Birdbox

This source code released under an MIT license.