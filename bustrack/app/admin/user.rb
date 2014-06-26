ActiveAdmin.register User do
  permit_params [:email, :admin]

  form do |f|
    f.inputs "User" do
      f.input :email
      f.input :admin
    end
    f.actions
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  index do
    column :id
    column :email
    column :nombre
    column :fechaNac
    column :cuidad
    column :admin
    actions

  end
  
end
