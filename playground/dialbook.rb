
dial_book = {
  "newyork" => "222",
  "orlando" => "717"
}

def get_city_names book
  book.keys
end

def get_area_code book, city
  book[city]
end

loop do
  puts "Do you want to lookup an area codes based on a city name (y/n)? : "
  user_input = gets.chomp.downcase
  break if user_input != 'y'

  puts "Which city do you want the area code for?"
  puts get_city_names dial_book
  puts "Enter your selection: "
  city_user_input = gets.chomp.downcase
  if dial_book.include? city_user_input
    puts "The area code for #{city_user_input} is #{get_area_code dial_book, city_user_input}"
  else
    puts "Wrong selection, plese try again!"
  end
end