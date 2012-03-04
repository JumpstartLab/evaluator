class AnswersAddMetadata < ActiveRecord::Migration
  def change
    add_column :answers, :metadata, :text
  end
end
