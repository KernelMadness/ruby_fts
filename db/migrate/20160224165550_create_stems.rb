class CreateStems < ActiveRecord::Migration
  def change
    create_table :stems do |t|
      t.string :original
      t.string :stem, index: true
      t.string :field, index: true
      t.references :entity, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
