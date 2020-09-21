

users_table = [
  {username: "john", password: "pass"}
]

def auth_user(username, password, list_of_users)
  list_of_users.select { |u| u[:username] == username && u[:password] == password }.last
end

puts "Welcome to the authenticator"
puts '-' * 25

while true
  puts "This program will take input from the user and compare password"
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp

  user = auth_user(username, password, users_table)

  if user
    puts '*'*10 + " Welcome!!! " + '*'*10
    puts user
    break
  else
    puts "Wrong username or password - please try again"
  end
end