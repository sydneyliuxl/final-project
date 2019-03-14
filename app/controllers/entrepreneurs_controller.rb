class EntrepreneursController < ApplicationController
  def index
    @entrepreneurs = Entrepreneur.all

    render("entrepreneur_templates/index.html.erb")
  end

  def show
    @entrepreneur = Entrepreneur.find(params.fetch("id_to_display"))

    render("entrepreneur_templates/show.html.erb")
  end

  def new_form
    @entrepreneur = Entrepreneur.new

    render("entrepreneur_templates/new_form.html.erb")
  end

  def create_row
    @entrepreneur = Entrepreneur.new

    @entrepreneur.name = params.fetch("name")
    @entrepreneur.bio = params.fetch("bio")
    @entrepreneur.dob = params.fetch("dob")

    if @entrepreneur.valid?
      @entrepreneur.save

      redirect_back(:fallback_location => "/entrepreneurs", :notice => "Entrepreneur created successfully.")
    else
      render("entrepreneur_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @entrepreneur = Entrepreneur.find(params.fetch("prefill_with_id"))

    render("entrepreneur_templates/edit_form.html.erb")
  end

  def update_row
    @entrepreneur = Entrepreneur.find(params.fetch("id_to_modify"))

    @entrepreneur.name = params.fetch("name")
    @entrepreneur.bio = params.fetch("bio")
    @entrepreneur.dob = params.fetch("dob")

    if @entrepreneur.valid?
      @entrepreneur.save

      redirect_to("/entrepreneurs/#{@entrepreneur.id}", :notice => "Entrepreneur updated successfully.")
    else
      render("entrepreneur_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @entrepreneur = Entrepreneur.find(params.fetch("id_to_remove"))

    @entrepreneur.destroy

    redirect_to("/entrepreneurs", :notice => "Entrepreneur deleted successfully.")
  end
end
