class FundsController < ApplicationController
  def index
    @funds = Fund.all

    render("fund_templates/index.html.erb")
  end

  def show
    @fund = Fund.find(params.fetch("id_to_display"))

    render("fund_templates/show.html.erb")
  end

  def new_form
    @fund = Fund.new

    render("fund_templates/new_form.html.erb")
  end

  def create_row
    @fund = Fund.new

    @fund.name = params.fetch("name")
    @fund.duration = params.fetch("duration")
    @fund.field = params.fetch("field")
    @fund.stage = params.fetch("stage")
    @fund.manager_id = params.fetch("manager_id")

    if @fund.valid?
      @fund.save

      redirect_to( "/funds", :notice => "Fund created successfully.")
    else
      render("fund_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @fund = Fund.find(params.fetch("prefill_with_id"))

    render("fund_templates/edit_form.html.erb")
  end

  def update_row
    @fund = Fund.find(params.fetch("id_to_modify"))

    @fund.name = params.fetch("name")
    @fund.duration = params.fetch("duration")
    @fund.field = params.fetch("field")
    @fund.stage = params.fetch("stage")
    @fund.manager_id = params.fetch("manager_id")

    if @fund.valid?
      @fund.save

      redirect_to("/funds/#{@fund.id}", :notice => "Fund updated successfully.")
    else
      render("fund_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @fund = Fund.find(params.fetch("id_to_remove"))

    @fund.destroy

    redirect_to("/funds", :notice => "Fund deleted successfully.")
  end
end
