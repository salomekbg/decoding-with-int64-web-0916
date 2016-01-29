

# Decoding with Int64 

## Objectives

This lab is taken directly from a Trello job posting so take a look at the original challenge by opening `public/trello-job-board.png` in your favorite image viewer. Think about what the question is asking. Google around if you don't understand the statically-typed pseudo-code.

## Instructions

* Complete the method `encode_int64` in the `lib/encode_decode.rb` file such that it passes the specs. It should be a Ruby version of the [statically-typed](http://stackoverflow.com/a/1517670/2890716) pseudo-code below:

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
* Find a 9 letter string of characters that contains only letters from `acdegilmnoprstuw` such that `encode_int64(the_string)` retuns `956446786872726`. Replace the text "write answer here" with your answer in the `spec/encode_decode_spec.rb` file.

## Resources
* [Stack Overflow](http://stackoverflow.com) - [What is the difference between INT, INT16, INT32 and INT64?](http://stackoverflow.com/q/9696660/2890716)
* [Stack Overflow](http://stackoverflow.com) - [Static Typing](http://stackoverflow.com/a/1517670/2890716)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/decoding-with-int64' title='Decoding with Int64'>Decoding with Int64</a> on Learn.co and start learning to code for free.</p>
