ActiveAdmin.register Company do
  permit_params :name, :country, :logo, :user_id, :models
  menu priority: 2
  belongs_to :user, optional: true
  sidebar "Associated Models", only: [:show, :edit] do
  ul do
      li link_to "Models",    admin_company_models_path(company)
    end
  end


end
