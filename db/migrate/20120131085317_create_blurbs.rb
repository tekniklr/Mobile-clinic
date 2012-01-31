class CreateBlurbs < ActiveRecord::Migration
  def change
    create_table :blurbs do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
