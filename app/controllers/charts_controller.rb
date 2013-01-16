class ChartsController < ApplicationController
  def index
    @charts = Chart.all
    respond_with @charts
  end

  def show
    @chart = Chart.find(params[:id])
    respond_with @chart
  end

  def new
    @chart = Chart.new
    respond_with @chart
  end

  def edit
    @chart = Chart.find(params[:id])
    respond_with @chart
  end

  def create
    @chart = Chart.new(params[:chart])
    @chart.save
    respond_with @chart
  end

  def update
    @chart = Chart.find(params[:id])
    @chart.update_attributes(params[:chart])
    respond_with @chart
  end

  def destroy
    @chart = Chart.find(params[:id])
    @chart.destroy
    respond_with @chart
  end
end
