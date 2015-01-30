class CreateVenues < ActiveRecord::Migration
  def change
    create_table(:venues) do |t|
      t.column(:name, :string)

      t.timestamps(:null => false)
    end
  end
end
