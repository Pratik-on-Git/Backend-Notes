# Example of Instance Variables
class Person
    def initialize(first_name, last_name, age, gender)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @gender = gender
    end
    def person_info
        puts "Name: #{@first_name} #{@last_name}"
        puts "Age: #{@age}"
        puts "Gender: #{@gender}"
    end
end

# Create a New Object of the Person class
person1 = Person.new("John", "Doe", 30, "Male")
person2 = Person.new("Jane", "Doe", 25, "Female")
person1.person_info()
person2.person_info()



# Example of Class Variables
class Person2
    # Class variable to keep track of the number of instances
    @@number_of_persons = 0
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end

    def display_full_name
        puts "Full Name: #{@first_name} #{@last_name} #{@age} years old"
    end

    def total_number_of_persons
        @@number_of_persons += 1
        puts "Total Number of Persons: #{@@number_of_persons}"
    end
end

# Create New Objects of the Person2 class
person1 = Person2.new("Alice", "Smith", 28)
person1.display_full_name
person1.total_number_of_persons

person2 = Person2.new("Bob", "Johnson", 35)
person2.display_full_name
person2.total_number_of_persons

