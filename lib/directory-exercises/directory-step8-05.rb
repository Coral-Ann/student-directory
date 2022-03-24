# Exercise 05 =
# Add more hash categories, e.g hobbies, Date of Birth etc.

def student_filter(names)
  names[0].upcase != "H" && names.length < 12 ? names : (puts "This name is banned. Try again.")
end

# This method has definitely grown too large and needs to be refactored!
# I'll be looking into this at a later date, until then I will not include this exercise in step 06 onwards.
def student_details
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice:"
  students = []
  input = gets.chomp
  hash_count = 0
  array_count = 0

  while !input.empty? do
    if hash_count == 0
      if student_filter(input) == input
        students << {name: input, cohort: "", hobby: ""} 
        puts "Student cohort:"
        hash_count += 1
      end
    elsif hash_count == 1
      students[array_count][:cohort] << input
      puts "Student hobby:"
      hash_count += 1
    elsif hash_count == 2
      students[array_count][:hobby] << input
      puts "Now we have #{students.count} students."
      puts "Next student:"
      hash_count = 0
      array_count += 1
    end
    input = gets.chomp
  end
  students
end

def print_header
  puts "The Students of Villains Academy"
  puts "-------------"
end

def print(names)
  count = 0
  while count < names.length 
    puts "#{count + 1}. #{names[count][:name]}: #{names[count][:cohort]} cohort, their hobby is #{names[count][:hobby]}."
    count += 1
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students."
end

students = student_details
print_header
print(students)
print_footer(students)