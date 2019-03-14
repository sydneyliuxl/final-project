class FofsController < ApplicationController
  def index
    @fofs = Fof.all

    render("fof_templates/index.html.erb")
  end

  def show
    @fof = Fof.find(params.fetch("id_to_display"))

    render("fof_templates/show.html.erb")
  end

  def new_form
    @fof = Fof.new

    render("fof_templates/new_form.html.erb")
  end

  def create_row
    @fof = Fof.new

    @fof.name = params.fetch("name")
    @fof.scale = params.fetch("scale")
    @fof.expiration = params.fetch("expiration")
    @fof.user_id = params.fetch("user_id")

    if @fof.valid?
      @fof.save

      redirect_back(:fallback_location => "/fofs", :notice => "Fof created successfully.")
    else
      render("fof_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @fof = Fof.find(params.fetch("prefill_with_id"))

    render("fof_templates/edit_form.html.erb")
  end

  def update_row
    @fof = Fof.find(params.fetch("id_to_modify"))

    @fof.name = params.fetch("name")
    @fof.scale = params.fetch("scale")
    @fof.expiration = params.fetch("expiration")
    @fof.user_id = params.fetch("user_id")

    if @fof.valid?
      @fof.save

      redirect_to("/fofs/#{@fof.id}", :notice => "Fof updated successfully.")
    else
      render("fof_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @fof = Fof.find(params.fetch("id_to_remove"))

    @fof.destroy

    redirect_to("/fofs", :notice => "Fof deleted successfully.")
  end
end
