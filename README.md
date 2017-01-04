_gem skeleton generated with [gemmy](http://github.com/maxpleaner/gemmy)_

This provides a syntax somewhat similar to Javascript's shorthand for constructing hashes.

This code is copied from a stack overflow answer authored by user `akuhn`:

http://stackoverflow.com/a/41456114/2981429

---

Usage:

1. `gem 'keyword_hash_builder'`

2. `require 'keyword_hash_builder'`

3. load patch in one of two ways:
  1. globally

            KeywordHashBuilder.load_globally

  2.  refinement

            # in a class / module definition
            using KeywordHashBuilder.patch

4. Use this syntax:

        a = 1
        b = 2
        c = String
        puts `a,b,c`
        # => { a: 1, b: 2, c: String }



