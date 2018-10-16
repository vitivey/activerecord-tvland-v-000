class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    puts "#{self.first_name} #{self.last_name}"
  end
  binding.pry

  def list_roles
    self.characters.map do |character|
      puts "#{character.name} - #{character.show.name}"
    end
  end

end
