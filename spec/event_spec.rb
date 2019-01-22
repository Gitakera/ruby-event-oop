require_relative '../lib/event'

describe Event do

  before(:each) do
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

	describe 'initializer' do
		it 'creates an event' do
		# créé un utilisateur
      envenement= Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

      # petit test si l'evenement est bien créé
      expect(envenement.class).to eq(Event)

		end
	end

end
