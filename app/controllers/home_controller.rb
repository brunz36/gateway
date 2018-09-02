# frozen_string_literal: true

# Provides home page
class HomeController < ApplicationController
  def index
    redirect_to :program_applications if signed_in?
  end
end