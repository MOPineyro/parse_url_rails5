class ParsedUrlsController < ApplicationController
  before_action :set_parsed_url, only: [:show, :update, :destroy]

  # GET /parsed_urls
  def index
    @parsed_urls = ParsedUrl.all

    render json: @parsed_urls
  end

  # GET /parsed_urls/1
  def show
    render json: @parsed_url
  end

  # POST /parsed_urls
  def create
    @parsed_url = ParsedUrl.new(parsed_url_params)

    if @parsed_url.save
      render json: @parsed_url, status: :created, location: @parsed_url
    else
      render json: @parsed_url.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parsed_urls/1
  def update
    if @parsed_url.update(parsed_url_params)
      render json: @parsed_url
    else
      render json: @parsed_url.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parsed_urls/1
  def destroy
    @parsed_url.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parsed_url
      @parsed_url = ParsedUrl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def parsed_url_params
      params.require(:parsed_url).permit(:url)
    end
end
