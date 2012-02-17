module Admin
  class SupportsController < Admin::BaseController

    crudify :support, :xhr_paging => true

  end
end
