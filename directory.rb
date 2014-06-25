@line_width = 50
students = []

def print_header
	p "The students of my cohort at Makers Academy"
	p "----------------"
end

def print(students)
	students.sort_by do |cohort|
		cohort[:cohort]
	end	
	count = 0
  	while count < students.length do 
    	p "#{students[count][:name]}, (#{students[count][:cohort]} cohort), #{students[count][:hobby]}".center(@line_width) if students[count][:name].start_with?("C") && students[count][:name].length < 12
		count = count + 1	
	end
end

def print_footer(names)
 	p "Overall, we have #{names.length} great students"
end

def input_students
	p "Please enter the name of the student"
	# create an empty array
 	students = []
 	# get the first name
 	name = gets.chomp.capitalize
 	while !name.empty? do
 		# while the name is not empty, repeat this code
		p "Please enter the Month of the Cohort"
		# get cohort
		cohort = gets.chomp.capitalize.to_sym
		cohort = :June if cohort.empty?
		# set June as default		
		p "Please enter the Hobby of the student"	
		# get hobby
		hobby = gets.chomp.capitalize.to_sym
		# add new values to array
		students << {:name => name, :cohort => cohort, :hobby => hobby}
		p "Now we have #{students.length} students"	
		p "Please enter the name of another student, or press return to finish"
		# get another name
		name = gets.chomp.capitalize
	end
	students
end	



students = input_students

print_header
print(students)
print_footer(students)
