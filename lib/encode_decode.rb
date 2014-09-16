def valid_chars
  "acdegilmnoprstuw"
end

def encode_int64(message)
  encoded_message = 7
  i = 0
  while i < message.length
    if valid_chars.include?(message[i])
      encoded_message = 37 * encoded_message + valid_chars.index(message[i])
    else
      return "The word should only contain letters in #{valid_chars}"
    end
    i += 1
  end
  encoded_message
end

def decode_int64(encoded_message)
  message = ""
  until encoded_message == 7
    i = encoded_message % 37
    message << valid_chars[i]
    encoded_message = (encoded_message - i ) / 37
  end
  message.reverse
end