# frozen_string_literal: true
module ApplicationHelper
  def nav_black_or_white_class
    controller_name == 'home' ? '-black' : '-white'
  end
end
