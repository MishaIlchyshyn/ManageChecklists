class AddAuditRefToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_reference :answers, :audit, null: false, foreign_key: true
  end
end
