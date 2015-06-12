class Favorite < ActiveRecord::Base
  belongs_to :favoller, class_name: "User"
  belongs_to :faved, class_name: "Micropost" 
end
