# Exercise 03 =
# Only print students whose names are shorter than 12 characters.
# I decided to keep previous exercises in to try and manage the syntax as it grows more complicated.
# If this begins to impede my lerning, I will note down when I revert back to the original 'directory.rb' syntax.

# I moved the H filter and < 12 letters into it's own method to use within input_students.
# If needed, we can now add other filters without messing with student_input and keeps the definitions accurate.
def student_filter(names)
  names[0].upcase != "H" && names.length < 12 ? names : (puts "This name is banned. Try again.")
end

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  students = []
  name = gets.chomp

  while !name.empty? do
# Added student_filter here to remove whatever is recommended from the above method.
    if student_filter(name) == name
      students << {name: name, cohort: :november} 
      puts "Now we have #{students.count} students."
    end
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