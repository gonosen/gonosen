class AddCompanyImageToInterns < ActiveRecord::Migration
  def change
    add_column :interns, :company_image_id, :string
  end
end
