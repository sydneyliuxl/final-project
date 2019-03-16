class ManagersController < ApplicationController
  def index
    @managers = Manager.all

    render("manager_templates/index.html.erb")
  end

  def show
    @manager = Manager.find(params.fetch("id_to_display"))

    render("manager_templates/show.html.erb")
  end

  def new_form
    @manager = Manager.new

    render("manager_templates/new_form.html.erb")
  end

  def create_row
    @manager = Manager.new

    @manager.name = params.fetch("name")
    @manager.dob = params.fetch("dob")
    @manager.image = params.fetch("image")
    @manager.bio = params.fetch("bio")

    if @manager.valid?
      @manager.save

      redirect_back(:fallback_location => "/managers", :notice => "Manager created successfully.")
    else
      render("manager_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @manager = Manager.find(params.fetch("prefill_with_id"))

    render("manager_templates/edit_form.html.erb")
  end

  def update_row
    @manager = Manager.find(params.fetch("id_to_modify"))

    @manager.name = params.fetch("name")
    @manager.dob = Chronic.parse(params.fetch("dob"))
    @manager.image = params.fetch("image")
    @manager.bio = params.fetch("bio")

    if @manager.valid?
      @manager.save

      redirect_to("/managers/#{@manager.id}", :notice => "Managers updated successfully.")
    else
      render("manager_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @manager = Manager.find(params.fetch("id_to_remove"))

    @manager.destroy

    redirect_to("/managers", :notice => "Manager deleted successfully.")
  end
end
