# Nouns
# Names
# Phone Numbers
# Address
# Position
# Salary
# Slack Account
# Github Account
# Verbs
# Add
# Search
# Delete
# Name the class
class TiyData
  # Saving the correct data into class
  attr_reader "name", "phone_number", "address", "position", "salary", "slack_account", "github_account"
  # Defining name, phone_number, address, position, salary, slack_account, github_account
  def initialize(name, phone_number, address, position, salary, slack_account, github_account)
    @name = name
    @phone_number = phone_number
    @address = address
    @position = position
    @salary = salary
    @slack_account = slack_account
    @github_account = github_account
  end
  # Create an array to hold all of the information
  accounts = []
  loop do
    # Ask the user where they want to go?
    puts "Are you looking to Add (A), Search (S) or Delete D? "
    input = gets.chomp.upcase
    if input == "A"
      loop do
        puts "What is their name? "
        name = gets.chomp
        # If no name appears have it break
        if name.empty?
          break
        end
        puts "What is their phone number? "
        phone_number = gets.chomp
        puts "What is their address? "
        address = gets.chomp
        puts "What is their position? "
        position = gets.chomp
        puts "What is their salary? "
        salary = gets.chomp
        puts "What is their slack name? "
        slack_account = gets.chomp
        puts "What is their GitHub user name? "
        github_account = gets.chomp

        account = TiyData.new(name, phone_number, address, position, salary, slack_account, github_account)
        accounts << account
      end

    end
    if input == "S"
      puts "Search: " 
    end

  end
end
