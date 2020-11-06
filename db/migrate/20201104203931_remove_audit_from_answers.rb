class RemoveAuditFromAnswers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :answers, :audit, null: false, foreign_key: true
  end
end
