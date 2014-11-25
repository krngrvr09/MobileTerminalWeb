class AddCommandNameToCommands < ActiveRecord::Migration
  def change
    add_column :commands, :command_name, :string
  end
end
