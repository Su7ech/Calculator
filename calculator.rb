def say(msg)
  puts "----#{msg}----"
end

say "Welcome to my calculator!"
say "What's the first number?"

num1 = gets.chomp

say "What's the second number?"

num2 = gets.chomp

say "What would you like to do?"
say "Enter '1' for Addition, '2' for Subtraction, '3' for Multiplication, or '4' for Division"

operation = gets.chomp

case operation
  when '1'
    p "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
  when '2'
    p "#{num1} - #{num2} = #{num1.to_i - num2.to_i}"
  when '3'
    p "#{num1} * #{num2} = #{num1.to_i * num2.to_i}"
  when '4'
    p "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
  else
    say "Invalid Selection!!!"
  end

say "Thanks for playing!!!"