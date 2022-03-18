# Instead of an array with already added information, I am refactoring this so that
# adding students within the code is possible. 

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  # creating empty array.
  students = []
  # getting the first name.
  name = gets.chomp
  # while name isn't empty, repeat the code.
  while !name.empty? do
    # Adding the student hash to the array.
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students."
    # get another name.
    name = gets.chomp
  end
  # Return the array of students
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

# Calling the methods
students = input_students
print_header
print(students)
print_footer(students)