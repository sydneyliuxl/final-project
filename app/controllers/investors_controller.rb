class InvestorsController < ApplicationController
  def index
    @investors = Investor.all

    render("investor_templates/index.html.erb")
  end

  def show
    @investor = Investor.find(params.fetch("id_to_display"))

    render("investor_templates/show.html.erb")
  end

  def new_form
    @investor = Investor.new

    render("investor_templates/new_form.html.erb")
  end

  def create_row
    @investor = Investor.new

    @investor.name = params.fetch("name")
    @investor.dob = params.fetch("dob")
    @investor.image = params.fetch("image")
    @investor.bio = params.fetch("bio")

    if @investor.valid?
      @investor.save

      redirect_back(:fallback_location => "/investors", :notice => "Investor created successfully.")
    else
      render("investor_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @investor = Investor.find(params.fetch("prefill_with_id"))

    render("investor_templates/edit_form.html.erb")
  end

  def update_row
    @investor = Investor.find(params.fetch("id_to_modify"))

    @investor.name = params.fetch("name")
    @investor.dob = params.fetch("dob")
    @investor.image = params.fetch("image")
    @investor.bio = params.fetch("bio")

    if @investor.valid?
      @investor.save

      redirect_to("/investors/#{@investor.id}", :notice => "Investor updated successfully.")
    else
      render("investor_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @investor = Investor.find(params.fetch("id_to_remove"))

    @investor.destroy

    redirect_to("/investors", :notice => "Investor deleted successfully.")
  end
end
