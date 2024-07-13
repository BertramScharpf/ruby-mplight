# MPLight

  - Ruby library
  - Yet another implementation of the [MessagePack](http://msgpack.org)
    protocol/format
  - Designed to be as small as possible. Clean code, no dependecies, no
    frills, no wokeness.

RubyGems install:

```
gem install mplight
```

If you like to reduce dependencies, you might prefer to copy the ~300
lines of Ruby code into your project. See
[Ruby-Nvim](https://github.com/BertramScharpf/ruby-nvim) for an example.


## Usage

```ruby
require "mplight"
IO.pipe do |r,w|
  t = MPLight::Types.new

  t.extend MPLight::Packer
  t.init_output w
  t.put %w(foo bar baz)

  t.extend MPLight::Unpacker
  t.init_input r
  puts t.get.inspect
end
```

Usage with [Neovim](https://neovim.io/):

```ruby
require "mplight"
require "yaml"
IO.popen %w(nvim --api-info) do |r|
  t = MPLight::Types.new
  t.extend MPLight::Unpacker
  t.init_input r
  puts t.get.to_yaml
end
```

See the [`testit`](testit) file for further examples.


## Sister Project

This library was written together with the
[Ruby-Nvim](https://github.com/BertramScharpf/ruby-nvim).



## Copyright

  * (C) 2024 Bertram Scharpf <software@bertram-scharpf.de>
  * License: [BSD-2-Clause+](LICENSE)

