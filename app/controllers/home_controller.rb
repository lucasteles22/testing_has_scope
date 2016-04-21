class HomeController < ApplicationController
  has_scope :active, :type => :boolean
  has_scope :inactive, :type => :boolean
  has_scope :by_degree
  has_scope :by_period, :using => [:started_at, :ended_at], :type => :hash

  def index
    @graduations = apply_scopes(Graduation).all
  end
end
