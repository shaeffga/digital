class Quote < ActiveRecord::Base
  attr_accessible :help_desk_id

  belongs_to :user

  belongs_to :help_desk

end
