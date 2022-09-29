class Person
    def initialize(name, age)
      @name = name
      @age = age
    end
    
    public    # This method can be called from outside the class.
    
    def about_me
      puts "I'm #{@name} and I'm #{@age} years old!"
    end
    
    private   # This method can't!
    
    def bank_account_number
      @account_number = 12345
      puts "My bank account number is #{@account_number}."
    end
  end
  
  eric = Person.new("Eric", 26)
  eric.about_me
  eric.bank_account_number


# Methods are public by default, unless you specify them. 
# Private methods are private, and can only be called by 
# other methods inside the object(class)
# In order to access private info, we have to create 
# public methods that know how to get it. 


# attr_reader & attr_writer 
# use attr_reader to access a variable and attr_writer to change it. 
# Ruby reads them as methods and executes them as necesary 

class Person
    attr_reader :name
    attr_writer :name
  
    attr_reader :job
    attr_writer :job 
  
    def initialize(name, job)
      @name = name
      @job = job
    end
  
  end

# attr_accessor 
# to read and write a variable, you can use attr_accessor 
# to simplify even further. It makes the variable readabe 
# and accessable. 

class Person
    attr_reader :name
    attr_accessor :job
    
    def initialize(name, job)
      @name = name
      @job = job
    end
  end
