def say(msg)
  puts "=> #{msg}"
end

# def validate_first_input(num1)
#   until num1 =~ /^[-+]?((\d+(\.\d*)?)|(\.\d+))$/
#     puts "Please enter a valid number!!!"
#     num1 = gets.chomp
#   end
# end

def do_math(num1, num2, operation)
  case operation
    when '+'
      num1.to_i + num2.to_i
    when '-'
      num1.to_i - num2.to_i
    when '*'
      num1.to_i * num2.to_i
    when '/'
      num1.to_f / num2.to_f
    end
end

say "Welcome to my calculator!"

run_calculator = 'yes'

while run_calculator == 'yes'
  say "What's the first number?"

  num1 = gets.chomp
  until num1 =~ /^[-+]?((\d+(\.\d*)?)|(\.\d+))$/
    say "Invalid Number, try again!"
    num1 = gets.chomp
  end

  say "What's the second number?"

  num2 = gets.chomp
  until num2 =~ /^[-+]?((\d+(\.\d*)?)|(\.\d+))$/
    say "Invalid Number, try again!"
    num2 = gets.chomp
  end

  say "What would you like to do?"

  say "Enter '+' for Addition, '-' for Subtraction, '*' for Multiplication, or '/' for Division"

  operation = gets.chomp

  if num2.to_f == 0 && operation == '/'
    say "You cannot devide by 0, please enter another value!"
    num2 = gets.chomp
  else
    result = do_math(num1, num2, operation)
  end

  say "#{num1} #{operation} #{num2} = #{result}"

  say "Would you like to do another calculation? Yes / No?"
  run_calculator = gets.chomp

  if run_calculator.downcase == 'no'
    say "Thanks for using my calculator!"
  elsif run_calculator.downcase == 'yes'
    run_calculator = 'yes'
  else
    until run_calculator.downcase == 'yes' || run_calculator.downcase == 'no'
      say "Please enter yes or no!"
      run_calculator = gets.chomp
    end
  end
end 

