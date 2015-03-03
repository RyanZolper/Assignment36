ActiveAdmin.register User do
  permit_params :name, :email, :companies
  menu priority: 1
  sidebar "User Created:", only: [:show, :edit] do
  ul do
      li link_to "Companies",    admin_user_companies_path(user)
    end
  end

end



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

      ActiveAdmin.register Configuration do
        menu priority: 4
        permit_params :name, :start_price, :model_id
        belongs_to :model, optional: true

      end




  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
