class CreateAudits < ActiveRecord::Migration[6.0]
  def change
    create_table :audits do |t|
      t.string :checklistname

      t.timestamps
    end
  end
end
