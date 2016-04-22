class GraduationsController < ApplicationController
  has_scope :by_status, :type => :array, :only => [:index] do |controller, scope, value|
    value == ['active'] ? scope.active : value == ['inactive'] ? scope.inactive : scope.all
  end

  has_scope :active, :type => :boolean, :only => [:links]
  has_scope :inactive, :type => :boolean, :only => [:links]
  has_scope :by_degree, :only => [:links]
  has_scope :by_period, :using => [:started_at, :ended_at], :type => :hash, :only => [:links]

  def index
    @graduations = apply_scopes(Graduation).all
  end

  def links
    @graduations = apply_scopes(Graduation).all
  end
end
