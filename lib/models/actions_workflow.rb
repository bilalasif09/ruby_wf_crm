class ActionsWorkflow < ApplicationRecord
  belongs_to :action
  belongs_to :previous, class_name: 'ActionsWorkflow', foreign_key: 'previous_id', optional: true
  belongs_to :success_next, class_name: 'ActionsWorkflow', foreign_key: 'success_next_id', optional: true
  belongs_to :failure_next, class_name: 'ActionsWorkflow', foreign_key: 'failure_next_id', optional: true
  belongs_to :actions_workflow_setting
end