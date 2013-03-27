hector-jekyll is a [Hector](https://github.com/sstephenson/hector) extension which enables the use of multiple identity adapters.

### Installation and usage

Install the [hector-jekyll gem](http://rubygems.org/gems/hector-jekyll) and require it in your Hector server's `init.rb`. Then assign an array of identity adapters to `Hector::Identity.adapter`:

```ruby
require 'hector-jekyll'
Hector::Identity.adapter = [Hector::YamlIdentityAdapter.new, ...]
```

### License <small>(MIT)</small>

<small>Copyright © 2013 Ross Paffett.</small>

<small>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:</small>

<small>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.</small>

<small>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</small>