class ActionsWorkflowSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :actions_workflow_settings do |t|
      t.string :wf_name
      t.jsonb :payload
      t.bigint :user_id
      t.index [:wf_name, :user_id], unique: true
      t.timestamps
    end
    add_column :actions_workflows, :actions_workflow_setting_id, :bigint
  end
end
