class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :authorized_user, only: [:edit, :update, :destroy]
  before_action :user_select, only: [:new, :edit, :update, :create]
  before_action :sub_select, only: [:new, :edit, :update, :create]

  # GET /links
  # GET /links.json
  def index
    if params[:subreddit_id]
      @subreddit = Subreddit.where(:name => params[:subreddit_id]).first
      @links = @subreddit.links.all
    else
      @links = Link.all.sort_by{|link| link.votes.count - link.downvotes.count}.reverse
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show

  end

  # GET /links/new
  def new
    @link = current_user.links.build
    # @link.votes << Vote.create(:upvote => 0, :downvote => 0)
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links
  # POST /links.json
  def create
    @link = current_user.links.build(link_params)
    # @link.votes << Vote.create(:upvote => 0, :downvote => 0)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvoted
    @link = Link.find(params[:id])
    @link.votes.create
    @link.save
    redirect_to(links_path)
  end

  def downvoted
    @link = Link.find(params[:id])
    @link.downvotes.create
    @link.save
    redirect_to(links_path)
  end

  def upvotedlink
    @link = Link.find(params[:id])
    @link.votes.create
    @link.save
    redirect_to (@link.url)
  end

  def authorized_user
    @link = current_user.links.find_by(id: params[:id])
    redirect_to links_path, notice: "Not authorized to edit this link" if @link.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_link
      @link = Link.find(params[:id])
    end

    def sub_select
      @sub_options = Subreddit.all.collect{ |subreddit| [subreddit.name, subreddit.id] }
    end

    def user_select
      @user_options = User.all.collect{ |user| [user.name, user.id] }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def link_params
      params.require(:link).permit(:title, :summary, :url, :name, :link_id, :vote)
    end
end
