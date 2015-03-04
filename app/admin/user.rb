ActiveAdmin.register User do
  permit_params :name, :email, :companies
  menu priority: 1
  sidebar "User Created:", only: [:show, :edit] do
  ul do
      li link_to "Companies",    admin_user_companies_path(user)
    end
  end

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
