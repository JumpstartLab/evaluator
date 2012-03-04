class EvaluationSectionRenameToSection < ActiveRecord::Migration
  def change
    rename_table  :evaluation_sections, :sections
    rename_column :questions, :evaluation_section_id, :section_id
  end
end
