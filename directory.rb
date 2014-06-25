student_count = 20
@line_width = 50
students = []

def print_header
	p "The students of my cohort at Makers Academy"
	p "----------------"
end

def print_x(students)
  	students.each do |student|
    	puts "#{student[:name]}, (#{student[:cohort]} cohort), #{student[:hobby]}".center(@line_width) if student[:name].start_with?("C") && student[:name].length < 12
	end
end

def print_footer(names)
 	p "Overall, we have #{names.length} great students"
end

def input_students
	p "Please enter the name of the student"
	p "To finish, just hit return twice"
 
 	students = []
 	name = gets.chomp

 	
		p "Please enter the Month of the Cohort"
		cohort = gets.chomp.downcase.to_sym
		cohort = :June if cohort.empty?		
		p "Please enter the Hobby of the student"	
		hobby = gets.chomp.downcase.to_sym

		students << {:name => name, :cohort => cohort, :hobby => hobby}
		p "Now we have #{students.length} students"
	
	students
end	



students = input_students

print_header
print_x(students)
print_footer(students)
