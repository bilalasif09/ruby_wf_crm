class CreateActionsWorkflow < ActiveRecord::Migration[7.0]
  def change
    create_table :actions_workflows do |t|
      t.bigint :action_id
      t.bigint :previous_id
      t.bigint :success_next_id
      t.bigint :failure_next_id
      t.timestamps
    end
  end
end
