class User
  attr_accessor :email, :name
  @@user_count = 0
  @@all = []
  @@user_cree=[]

  def initialize(email_to_save)
    @email = email_to_save
    @@all[@@user_count]=email_to_save
    @@user_count = @@user_count + 1
    @@instance[@@user_count]
    puts "objet cree #{email_to_save}"
  end

  def self.all
    return all
  end
  
  def self.descendants
    return ObjectSpace.each_object(Class).select { |klass| klass < self }
  end
	
  def affiche_moi
    return self
  end
  def self.count
    return @@user_count
  end

  def self.find_by_email(email)
    puts email
   
  end

  

  

end
 
   
pupu=User.new("maila")
poipoi=User.new("nono")  
	
puts User.count
puts User.descendants


