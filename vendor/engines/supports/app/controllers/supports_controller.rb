class SupportsController < ApplicationController

  before_filter :find_all_supports
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @support in the line below:
    present(@page)
  end

  def show
    @support = Support.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @support in the line below:
    present(@page)
  end

protected

  def find_all_supports
    @supports = Support.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/supports").first
  end

end
