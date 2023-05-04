class Action < ApplicationRecord
  has_many :actions_workflows
  validates :name, presence: true, uniqueness: true
end