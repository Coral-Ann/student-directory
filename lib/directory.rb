# Adding an interactive menu.

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    name = gets.chomp
  end
  students
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each do |name|
    puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

def interactive_menu
  students = []
  loop do
    # 1. Print the menu and ask the user what to do.
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because I'm adding more options later.
    # 2. Read the input and save it into a variable.
    selection = gets.chomp
    # 3. Do what the user asks.
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # Exit the program.
    else
      puts "I don't know what you meant, try again."
    end
  end
end

interactive_menu