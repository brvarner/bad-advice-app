class Person
  attr_accessor :name, :option, :rand_index

  def initialize(name, option)
    @name = name
    @option = option
    @rand_index = rand(3)
  end

  def career_advice 
    advice_arr = ["Quit your job, #{name}.", "Learn the Shakespeare programming language, #{name}.", "Study taxidermy, #{name}."]

    advice_arr[rand_index]
  end

  def financial_advice
    advice_arr = ["Invest in Squishmallows, they're the new Beanie Babies, #{name}.", "Send all of your money to a random number on Cash App, #{name}.", "Open as many credit cards as you can, that way you can pay them all off with each other, #{name}."]

    advice_arr[rand_index]
  end

  def relationship_advice
    advice_arr = ["Leave your significant other, #{name}", "The element of surprise is huge in relationships, #{name}. Surprise your significant other with a crate of crickets.", "Take your significant other to see the monster trucks, #{name}. Be sure to explain at length why Grave Digger is the best."]

    advice_arr[rand_index]
  end

end
puts "Welcome to the Horrible Advice App! \n\nPlease enter your first name:"
name = gets.chomp.capitalize
puts "Enter 1 for career advice, 2 for financial advice, or 3 for relationship advice."
option = gets.chomp

user = Person.new(name, option.to_i)

case user.option
when 1
  puts user.career_advice
when 2
  puts user.financial_advice
when 3
  puts user.relationship_advice
else 
  puts "Please try again, entering a number between 1 and 3."
end
