# Exercise 05 =
# Add more hash categories, e.g hobbies, Date of Birth etc.

def student_filter(names)
  names[0].upcase != "H" && names.length < 12 ? names : (puts "This name is banned. Try again.")
end

def student_details
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice:"
  students = []
  input = gets.chomp
  count = 0
  student_count = 0

  while !input.empty? do
    if count == 0
      if student_filter(input) == input
        students << {name: input, cohort: "", hobby: ""} 
        puts "Student cohort:"
        count += 1
      end
    elsif count == 1
      students[student_count][:cohort] << input
      puts "Student hobby:"
      count += 1
    elsif count == 2
      students[student_count][:hobby] << input
      puts "Now we have #{students.count} students."
      puts "Next student:"
      count = 0
      student_count += 1
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