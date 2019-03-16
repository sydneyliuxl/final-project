class InvestmentsController < ApplicationController
  def index
    @investments = Investment.all.order(:fund_id)

    render("investment_templates/index.html.erb")
  end

  def show
    @investment = Investment.find(params.fetch("id_to_display"))

    render("investment_templates/show.html.erb")
  end

  def new_form
    @investment = Investment.new

    render("investment_templates/new_form.html.erb")
  end

  def create_row
    @investment = Investment.new

    @investment.fund_id = params.fetch("fund_id")
    @investment.project_id = params.fetch("project_id")
    @investment.amount = params.fetch("amount")
    @investment.round = params.fetch("round")

    if @investment.valid?
      @investment.save

      redirect_back(:fallback_location => "/investments", :notice => "Investment created successfully.")
    else
      render("investment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @investment = Investment.find(params.fetch("prefill_with_id"))

    render("investment_templates/edit_form.html.erb")
  end

  def update_row
    @investment = Investment.find(params.fetch("id_to_modify"))

    @investment.fund_id = params.fetch("fund_id")
    @investment.project_id = params.fetch("project_id")
    @investment.amount = params.fetch("amount")
    @investment.round = params.fetch("round")

    if @investment.valid?
      @investment.save

      redirect_to("/investments/#{@investment.id}", :notice => "Investment updated successfully.")
    else
      render("investment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @investment = Investment.find(params.fetch("id_to_remove"))

    @investment.destroy

    redirect_to("/investments", :notice => "Investment deleted successfully.")
  end
end
