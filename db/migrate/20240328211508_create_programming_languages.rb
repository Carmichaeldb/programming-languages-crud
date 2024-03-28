class CreateProgrammingLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :programming_languages do |t|
      t.string :title
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
