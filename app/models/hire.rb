class Hire < ActiveRecord::Base
belongs_to :client
belongs_to :vehicle
end
