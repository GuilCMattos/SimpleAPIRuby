class AddKindToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :kind, :reference
  end
end
