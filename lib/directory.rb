# Refactoring menu.
@students = []

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  name = gets.chomp

  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students."
    name = gets.chomp
  end
  @students
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv" # Added new option to save file.
  puts "9. Exit" # 9 because I'm adding more options later.
end

def show_students
  print_header
  print_student_list
  print_footer
end

def save_students
  # Open the file for writing.
  file = File.open("students.csv","w")
  # Iterate through the array of students.
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "3" # Connecting the input '3' to the new method.
      save_students
    when "9"
      exit
    else
      puts "I don't know what you meant, try again."
  end
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students."
end

interactive_menu