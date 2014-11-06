def say(msg)
  puts "----#{msg}----"
end

def do_math(num1, num2, operation)
  case operation
    when '+'
      num1.to_i + num2.to_i
    when '-'
      num1.to_i - num2.to_i
    when '*'
      num1.to_i * num2.to_i
    when '/'
      if num2.to_i == 0
        say "You cannot devide by 0, try again!"
      else
        num1.to_i / num2.to_i
      end
    else
      say "Invalid Selection, try again!!!"
    end
end

say "Welcome to my calculator!"
say "What's the first number?"

num1 = gets.chomp

say "What's the second number?"

num2 = gets.chomp

say "What would you like to do?"
say "Enter '+' for Addition, '-' for Subtraction, '*' for Multiplication, or '/' for Division"

operation = gets.chomp

result = do_math(num1, num2, operation)

say "#{num1} #{operation} #{num2} = #{result}"

say "Thanks for playing!!!"

