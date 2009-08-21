module Admin
  class EmbedsController < ApplicationController
    active_scaffold :embed
    before_filter :suppress_production
  end
end
