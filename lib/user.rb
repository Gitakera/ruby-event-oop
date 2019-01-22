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
    
    #puts "objet cree #{email_to_save}"
  end

  def self.all
    return all
  end
  
  def show_my_mail
   return @email  
  end

  def self.count
    return @@user_count
  end

  def self.find_by_email(email)
     return @@save_self[email]
   
  end

  

  

end
 
   




