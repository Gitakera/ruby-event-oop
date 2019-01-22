# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;)
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc etc

#=========================User========================================================
puts""
puts"EXECUTION DE user.rb"
pupu=User.new("maila")
poipoi=User.new("nono")  
	poi=User.new("aaaaaaaa") 
puts "Vous avez cree en tout #{User.count} instance de User"

puts User.find_by_email("maila").show_my_mail

#==========================Event=======================================================
puts ""
puts "EXECUTION DE event.rb"
envenement= Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

envenement.to_s
