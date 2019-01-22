class User
  attr_accessor :email, :name
  @@user_count = 0
  @@all = []
  @@save_self=Hash.new

  def initialize(email_to_save)
    @email = email_to_save
    @@all[@@user_count]=email_to_save
    #@@save_self << self
    @@save_self.store(email_to_save,self)
    @@user_count = @@user_count + 1
    
    puts "objet cree #{email_to_save}"
  end

  def self.all
    return all
  end
  
  def self.descendants
    return ObjectSpace.each_object(Class).select { |klass| klass < self }
  end
	


  def self.count
    puts @@save_self
    puts @@save_self["maila"]
    return @@user_count
  end

  def self.find_by_email(email)
    
   
  end

  

  

end
 
   
pupu=User.new("maila")
poipoi=User.new("nono")  
	
puts User.count
puts User.descendants


