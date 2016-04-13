class StaticController < ApplicationController
  before_action :requires_admin, only: [:admin]

  def home
  end

  def about
  end

  def schedule
  end

  def speakers
  end

  def admin
  end
end
