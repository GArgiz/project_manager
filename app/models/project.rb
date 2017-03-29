class Project < ActiveRecord::Base
  belongs_to :project
  has_many :projects
end
