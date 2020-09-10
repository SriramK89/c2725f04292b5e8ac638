class CreateTelevisionShows < ActiveRecord::Migration[6.0]
  def change
    create_table :television_shows do |t|
      t.references :show, null: false, foreign_key: true
      t.references :channel, null: false, foreign_key: true
      t.integer :time_from
      t.integer :time_to
      t.datetime :airs_on
      t.string :repeats_on

      t.timestamps
    end
  end
end
