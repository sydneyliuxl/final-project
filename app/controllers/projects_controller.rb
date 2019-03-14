class ProjectsController < ApplicationController
  def index
    @projects = Project.all

    render("project_templates/index.html.erb")
  end

  def show
    @project = Project.find(params.fetch("id_to_display"))

    render("project_templates/show.html.erb")
  end

  def new_form
    @project = Project.new

    render("project_templates/new_form.html.erb")
  end

  def create_row
    @project = Project.new

    @project.name = params.fetch("name")
    @project.entrepreneur_id = params.fetch("entrepreneur_id")
    @project.industry = params.fetch("industry")
    @project.business = params.fetch("business")
    @project.location = params.fetch("location")

    if @project.valid?
      @project.save

      redirect_back(:fallback_location => "/projects", :notice => "Project created successfully.")
    else
      render("project_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @project = Project.find(params.fetch("prefill_with_id"))

    render("project_templates/edit_form.html.erb")
  end

  def update_row
    @project = Project.find(params.fetch("id_to_modify"))

    @project.name = params.fetch("name")
    @project.entrepreneur_id = params.fetch("entrepreneur_id")
    @project.industry = params.fetch("industry")
    @project.business = params.fetch("business")
    @project.location = params.fetch("location")

    if @project.valid?
      @project.save

      redirect_to("/projects/#{@project.id}", :notice => "Project updated successfully.")
    else
      render("project_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @project = Project.find(params.fetch("id_to_remove"))

    @project.destroy

    redirect_to("/projects", :notice => "Project deleted successfully.")
  end
end
