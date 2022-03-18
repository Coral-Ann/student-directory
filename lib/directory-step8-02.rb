# Exercise 02 =
# Block students whose names begin with a specific letter.

def input_students
  puts "Please enter the names of the students."
  puts "To finish, just hit enter twice."
  students = []
  name = gets.chomp

# I settled on if/else to give the user information as to why 'H' names weren't being added. 
# If I didn't think informing the user was needed, I could have done the following to the current line 16 and removed if/else:
#   ' students << {name: name, cohort: :november} if name[0].upcase != "H" '

  while !name.empty? do
    if name[0].upcase != "H"
      students << {name: name, cohort: :november} 
      puts "Now we have #{students.count} students."
    else
      puts "Names that begin with 'H' are banned. Try again."
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