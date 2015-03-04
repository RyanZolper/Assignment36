ActiveAdmin.register Configuration do
  menu priority: 4
  permit_params :name, :start_price, :model_id
  belongs_to :model, optional: true

end
