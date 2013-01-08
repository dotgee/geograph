class Charts::BuildController < ApplicationController
  include Wicked::Wizard

  steps :data, :chart

  def show
    @chart = Chart.find(params[:chart_id])
    render_wizard
  end
end
