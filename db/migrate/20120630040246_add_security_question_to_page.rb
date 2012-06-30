class AddSecurityQuestionToPage < ActiveRecord::Migration
  def change
    add_column :pages, :question, :string
    add_column :pages, :answer, :string
  end
end
