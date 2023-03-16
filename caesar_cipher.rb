def caesar_cipher(msg, mov)
  cif_msg = msg.chars.map do |c|
    if c.ord.between?('a'.ord, 'z'.ord) || c.ord.between?('A'.ord, 'Z'.ord)
      b = c.ord > 'Z'.ord ? 'a'.ord : 'A'.ord
      (b + ((c.ord - b + mov) % 26)).chr
    else
      c
    end
  end
  cif_msg.join('')
end

expected_output = "Bmfy f xywnsl!"
output = caesar_cipher("What a string!", 5)

puts "expected output: #{expected_output}"
puts "output: #{output}"