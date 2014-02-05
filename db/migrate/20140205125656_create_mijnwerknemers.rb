class CreateMijnwerknemers < ActiveRecord::Migration
  def change
    create_table :mijnwerknemers do |t|
      t.string :aandoening
      t.text :advies

      t.timestamps
    end
  end
end
