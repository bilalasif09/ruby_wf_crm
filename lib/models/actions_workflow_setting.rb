class ActionsWorkflowSetting < ApplicationRecord
  belongs_to :user, optional: true
  has_many :actions_workflows
  validates :wf_name, presence: true, uniqueness: { scope: :user_id }
end