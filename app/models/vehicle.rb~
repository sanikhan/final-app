class Vehicle < ActiveRecord::Base
has_many :hires
has_many :clients, :through => :hires
validates :name, length: { maximum: 15 }
end
