---
tags: todo, cs, comp sci, computer science, reverse engineering
languages: ruby
resources: 2
---
# Cryptography with Int64 

## Objectives

* Complete the method `encode_int64` in the `lib/cryptography.rb` file such that it passes the specs. It should be a Ruby version of the [statically-typed](http://stackoverflow.com/a/1517670/2890716) pseudo-code below:
```
Int64 hash (String s) {
  Int64 h = 7
  String letters = "acdegilmnoprstuw"
  for(Int32 i = 0; i < s.length; i++) {
      h = (h * 37 + letters.indexOf(s[i]))
  }
  return h
}
```
* Write a method, `decode_int64`, that takes the encoded message that `encode_int64` returns and decrypts it.
* Find a 9 letter string of characters that contains only letters from `acdegilmnoprstuw` such that `encode_int64(the_string)` retuns `956446786872726`. Replace the text "write answer here" with your answer in the `spec/cryptography_spec.rb` file.

## Resources
* [Stack Overflow](http://stackoverflow.com) - [What is the difference between INT, INT16, INT32 and INT64?](http://stackoverflow.com/q/9696660/2890716)
* [Stack Overflow](http://stackoverflow.com) - [Static Typing](http://stackoverflow.com/a/1517670/2890716)
