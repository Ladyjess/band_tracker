class CreateBands < ActiveRecord::Migration
  def change
    create_table(:bands) do |t|
      t.column(:name, :string)

      t.timestamps(:null => false)
    end
  end
end
