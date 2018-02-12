class Project < ApplicationRecord
    has_many :assignments
    has_many :sprints
end
