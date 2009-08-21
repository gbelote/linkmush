module Admin
  class LinksController < ApplicationController
    active_scaffold :link
    before_filter :suppress_production
  end
end
