class RemoveDescFromAnswers < ActiveRecord::Migration[6.0]
  def change
    remove_column :answers, :desc, :text
  end
end
