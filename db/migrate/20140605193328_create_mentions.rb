class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.text :content
      t.references :article, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
