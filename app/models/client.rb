class Client < ActiveRecord::Base
has_many :hires
has_many :vehicles, :through => :hires

validates :name, length: { maximum: 15 }
end
