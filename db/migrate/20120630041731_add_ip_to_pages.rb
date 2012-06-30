class AddIpToPages < ActiveRecord::Migration
  def change
    add_column :pages, :ip, :string
  end
end
