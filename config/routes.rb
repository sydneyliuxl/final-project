Rails.application.routes.draw do
  # Routes for the Option resource:

  # CREATE
  get("/options/new", { :controller => "options", :action => "new_form" })
  post("/create_option", { :controller => "options", :action => "create_row" })

  # READ
  get("/options", { :controller => "options", :action => "index" })
  get("/options/:id_to_display", { :controller => "options", :action => "show" })

  # UPDATE
  get("/options/:prefill_with_id/edit", { :controller => "options", :action => "edit_form" })
  post("/update_option/:id_to_modify", { :controller => "options", :action => "update_row" })

  # DELETE
  get("/delete_option/:id_to_remove", { :controller => "options", :action => "destroy_row" })

  #------------------------------

  root "fofs#index"
  
  devise_for :users
  # Routes for the Investment resource:

  # CREATE
  get("/investments/new", { :controller => "investments", :action => "new_form" })
  post("/create_investment", { :controller => "investments", :action => "create_row" })

  # READ
  get("/investments", { :controller => "investments", :action => "index" })
  get("/investments/:id_to_display", { :controller => "investments", :action => "show" })

  # UPDATE
  get("/investments/:prefill_with_id/edit", { :controller => "investments", :action => "edit_form" })
  post("/update_investment/:id_to_modify", { :controller => "investments", :action => "update_row" })

  # DELETE
  get("/delete_investment/:id_to_remove", { :controller => "investments", :action => "destroy_row" })

  #------------------------------

  # Routes for the Fund resource:

  # CREATE
  get("/funds/new", { :controller => "funds", :action => "new_form" })
  post("/create_fund", { :controller => "funds", :action => "create_row" })

  # READ
  get("/funds", { :controller => "funds", :action => "index" })
  get("/funds/:id_to_display", { :controller => "funds", :action => "show" })

  # UPDATE
  get("/funds/:prefill_with_id/edit", { :controller => "funds", :action => "edit_form" })
  post("/update_fund/:id_to_modify", { :controller => "funds", :action => "update_row" })

  # DELETE
  get("/delete_fund/:id_to_remove", { :controller => "funds", :action => "destroy_row" })

  #------------------------------

  # Routes for the Fof resource:

  # CREATE
  get("/fofs/new", { :controller => "fofs", :action => "new_form" })
  post("/create_fof", { :controller => "fofs", :action => "create_row" })

  # READ
  get("/fofs", { :controller => "fofs", :action => "index" })
  get("/fofs/:id_to_display", { :controller => "fofs", :action => "show" })

  # UPDATE
  get("/fofs/:prefill_with_id/edit", { :controller => "fofs", :action => "edit_form" })
  post("/update_fof/:id_to_modify", { :controller => "fofs", :action => "update_row" })

  # DELETE
  get("/delete_fof/:id_to_remove", { :controller => "fofs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Entrepreneur resource:

  # CREATE
  get("/entrepreneurs/new", { :controller => "entrepreneurs", :action => "new_form" })
  post("/create_entrepreneur", { :controller => "entrepreneurs", :action => "create_row" })

  # READ
  get("/entrepreneurs", { :controller => "entrepreneurs", :action => "index" })
  get("/entrepreneurs/:id_to_display", { :controller => "entrepreneurs", :action => "show" })

  # UPDATE
  get("/entrepreneurs/:prefill_with_id/edit", { :controller => "entrepreneurs", :action => "edit_form" })
  post("/update_entrepreneur/:id_to_modify", { :controller => "entrepreneurs", :action => "update_row" })

  # DELETE
  get("/delete_entrepreneur/:id_to_remove", { :controller => "entrepreneurs", :action => "destroy_row" })

  #------------------------------

  # Routes for the Manager resource:

  # CREATE
  get("/managers/new", { :controller => "managers", :action => "new_form" })
  post("/create_manager", { :controller => "managers", :action => "create_row" })

  # READ
  get("/managers", { :controller => "managers", :action => "index" })
  get("/managers/:id_to_display", { :controller => "managers", :action => "show" })

  # UPDATE
  get("/managers/:prefill_with_id/edit", { :controller => "managers", :action => "edit_form" })
  post("/update_manager/:id_to_modify", { :controller => "managers", :action => "update_row" })

  # DELETE
  get("/delete_manager/:id_to_remove", { :controller => "managers", :action => "destroy_row" })

  #------------------------------

  # Routes for the Project resource:

  # CREATE
  get("/projects/new", { :controller => "projects", :action => "new_form" })
  post("/create_project", { :controller => "projects", :action => "create_row" })

  # READ
  get("/projects", { :controller => "projects", :action => "index" })
  get("/projects/:id_to_display", { :controller => "projects", :action => "show" })

  # UPDATE
  get("/projects/:prefill_with_id/edit", { :controller => "projects", :action => "edit_form" })
  post("/update_project/:id_to_modify", { :controller => "projects", :action => "update_row" })

  # DELETE
  get("/delete_project/:id_to_remove", { :controller => "projects", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

 
  
  
end
