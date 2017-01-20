def encode_int64(message)
  h = 7
  letters = "acdegilmnoprstuw"
  message.split('').each do |letter|
    if letters.include?(letter)
      h = (h * 37 + letters.index(letter))
    else
      return "The word should only contain letters in acdegilmnoprstuw"
    end
  end
  h
end

def decode_int64(encoded_message)
  letters = "acdegilmnoprstuw"
  message = ""
  while encoded_message != 7
    remainder = encoded_message % 37
    message = letters[remainder] + message
    encoded_message = (encoded_message - remainder) / 37
  end
  message
end
