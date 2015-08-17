class Dog < ActiveRecord::Base

  def to_s

     "My dogs name #{self.name} and he is a #{self.breed} and is #{self.age} years old"

  end


end
