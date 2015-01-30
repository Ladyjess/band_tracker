class CreateBandsAndVenues < ActiveRecord::Migration
  def change
    create_table(:bands_venues) do |t|
      t.column(:band_id, :integer)
      t.column(:venue_id, :integer)
      t.belongs_to(:bands, index: true)
      t.belongs_to(:venues, index: true)
    end
  end
end
