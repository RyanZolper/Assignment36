ActiveAdmin.register Model do
  permit_params :name, :start_price, :company_id, :configurations
  menu priority: 3
  belongs_to :company, optional: true
  sidebar "Associated Configs", only: [:show, :edit] do
  ul do
      li link_to "Companies",    admin_model_configurations_path(model)
    end
  end

end
