# Exercise 06 =
# Learn about .center() and make use of it.

def student_filter(names)
  names[0].upcase != "H" && names.length < 12 ? names : (puts "This name is banned. Try again.")
end
    
def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  students = []
  name = gets.chomp
    
  while !name.empty? do
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
  puts "-------------".center(29) # Added .center here to position the line in the middle.
end
    
def print(names)
  count = 0
  while count < names.length 
    puts "#{count + 1}. #{names[count][:name]} (#{names[count][:cohort]} cohort)"
    count += 1
  end
end
        
def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end
        
students = input_students
print_header
print(students)
print_footer(students)