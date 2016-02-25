[![Build Status](https://travis-ci.org/KernelMadness/ruby_fts.svg?branch=master)](https://travis-ci.org/KernelMadness/ruby_fts)
## Ruby FTS engine
It's a simple but extensible concept of Ruby-based fulltext search engine.

Demo: https://ruby-fts.herokuapp.com/
## Usage
```ruby
class Article < ActiveRecord::Base
  include Fts
  use_fts [:title, :content], autoindex: true, addons: [BaseHighlighter]
end
```

## Components
FTS engine consists of Stemmers, Splitters, Sorters, and Addons.
By default it comes with very simple components. Feel free to customize it yourself.

### Stemmers
`BaseStemmer` uses `fast-stemmer` gem

### Splitters
`BaseSplitter` splits words by using special Regex

### Sorters
`BaseSorter` sorts search results by count of matches on given entity

### Addons
FTS appends specified addons to query chain. You can write your own addon to extend search query.
Word highlighting in this concept is done using Addons

```ruby
class BaseHighlighter
  def self.process(query)
    query.select("ARRAY_AGG(stems.original) as matches")
  end
end
```
