class Database
  attr_reader 'search_person', 'found', 'add_person'

  def initialize
    @accounts = []
    @found = found
  end

  def add_person
    print 'What is their name? '
    name = gets.chomp

    print 'What is their phone number? '
    phone_number = gets.chomp.to_i

    print 'What is their address? '
    address = gets.chomp

    print 'What is their position at the Iron Yard? '
    position = gets.chomp

    print 'What is their salary? '
    salary = gets.chomp.to_i

    print 'What is their Slack username? '
    slack_account = gets.chomp

    print 'What is their GitHub username? '
    github_account = gets.chomp

    account = Person.new(name, phone_number, address, position, salary, slack_account, github_account)

    @accounts << account
  end

  def search_person
    found = false
    puts 'Please input the name of the person you want to search'
    search_person = gets.chomp

    @accounts.each do |account|
      next unless account.name == search_person
      found = true
      puts "This is #{account.name}'s information.
       \nName: #{account.name}
       \nPhone: #{account.phone_number}
       \nAddress: #{account.address}
       \nPosition: #{account}.position}
       \nSalary: #{account.salary}
       \nSlack Account: #{account.slack_account}
       \nGitHub Account: #{account.github_account}"
    end

    puts "#{search_person} is not in our system.\n" if found == false
  end

  def delete_person
    found = false
    index = 0
    puts "Who are you looking to terminate? "
    name = gets.chomp

    @accounts.each do |account|
      if account.name == name
        found = true
        puts "Account has been exterminated!"
        @accounts.slice!(index)
      end
      index += 1
    end
    if found == false
      puts "No such account exist"
    end
  end
end

class Person
  # Saving the correct data into class
  attr_reader 'name', 'phone_number', 'address', 'position', 'salary', 'slack_account', 'github_account'

  # Defining name, phone_number, address, position, salary,slack_account, github_account
  def initialize(name, phone_number, address, position, salary, slack_account, github_account)
    @name = name
    @phone_number = phone_number
    @address = address
    @position = position
    @salary = salary
    @slack_account = slack_account
    @github_account = github_account
  end
end

data = Database.new

loop do
  puts 'Would you like to Add (A), Search (S) or Delete (D) a person from the Iron Yard Database?'
  selected = gets.chomp.upcase
  if selected == 'A'
    data.add_person
  elsif selected == 'S'
    data.search_person
  elsif selected == 'D'
    data.delete_person
  end
end
