class CreatePublishes < ActiveRecord::Migration[6.0]
  def change
    create_table :publishes do |t|
      t.references :user, index: true
      t.references :published, polymorphic: true, index: true

      t.timestamps
    end
  end
end
