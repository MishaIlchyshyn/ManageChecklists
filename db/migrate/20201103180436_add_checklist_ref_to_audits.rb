class AddChecklistRefToAudits < ActiveRecord::Migration[6.0]
  def change
    add_reference :audits, :checklist, null: false, foreign_key: true
  end
end
