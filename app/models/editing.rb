class Editing < ActiveRecord::Base
  belongs_to :whitebox
  belongs_to :user
end
