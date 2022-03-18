# Exercise 01 =
# Add '1. 2. 3. etc.' to each line of the directory.

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
    names.each_with_index do |name, index|
      puts "#{index + 1}. #{name[:name]} (#{name[:cohort]} cohort)"
    end
  end
  
  def print_footer(names)
    puts "Overall, we have #{names.count} great students."
  end
  
  students = input_students
  print_header
  print(students)
  print_footer(students)