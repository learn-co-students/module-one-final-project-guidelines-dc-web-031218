class Mission < ActiveRecord::Base
  belongs_to :pilot
  belongs_to :spacecraft
end