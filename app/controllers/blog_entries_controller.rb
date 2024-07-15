class BlogEntriesController < ApplicationController
  before_action :set_blog_entry, only: %i[show edit update destroy]
  before_action :require_login, except: %i[index show]

  def index
    @blog_entries = BlogEntry.all
  end

  def show
  end

  def new
    @blog_entry = BlogEntry.new
  end

  def create
    @blog_entry = current_user.blog_entries.build(blog_entry_params)
    if @blog_entry.save
      redirect_to @blog_entry, notice: 'Blog entry was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @blog_entry.update(blog_entry_params)
      redirect_to @blog_entry, notice: 'Blog entry was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @blog_entry.destroy
    redirect_to blog_entries_url, notice: 'Blog entry was successfully destroyed.'
  end

  private

  def set_blog_entry
    @blog_entry = BlogEntry.find(params[:id])
  end

  def blog_entry_params
    params.require(:blog_entry).permit(:title, :content)
  end
end
