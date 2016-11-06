# frozen_string_literal: true
module ApplicationHelper
  def navbar_class_modifier
    ['-', controller_name].join
  end
end
