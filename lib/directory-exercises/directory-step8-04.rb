# Exercise 04 =
# Change print method from an 'each' loop to a 'while' or 'until' loop.

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
  puts "-------------"
end
  
def print(names)
# Used an accumilator to keep track of positions within the array and hashes. 
  count = 0
# .length stops the loop once the whole array has been itterated through.
  while count < names.length 
# 'names[:name]' produced an error, I added '[count]' (e.g names[0][:name]) 
# to itterate through both positions within the array and hash.
    puts "#{count + 1}. #{names[count][:name]} (#{names[count][:cohort]} cohort)"
# Count needs to go up to itterate through the next hash within the array.
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