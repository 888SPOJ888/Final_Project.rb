ActiveAdmin.register Company do
    permit_params :email, :password, :password_confirmation

    index do
        selectable_column
        id_column
        column :name
        column :email
        column :course_id
        column :current_sign_in_at
        column :sign_in_count
        column :created_at
        actions
      end
    
      filter :email
      filter :current_sign_in_at
      filter :course_id
      filter :sign_in_count
      filter :created_at
    
      form do |f|
        f.inputs do
          input :name
          input :course_ids
        end
        f.actions
      end
end