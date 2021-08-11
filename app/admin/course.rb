ActiveAdmin.register Course do
    permit_params :email, :password, :password_confirmation

    index do
        selectable_column
        id_column
        column :name
        column :company
        column :level
        column :current_sign_in_at
        column :sign_in_count
        column :created_at
        actions
      end
    
      filter :current_sign_in_at
      filter :sign_in_count
      filter :created_at
    
      form do |f|
        f.inputs do
        end
        f.actions
      end
end