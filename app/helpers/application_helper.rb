# frozen_string_literal: true
module ApplicationHelper
  def body_data_attributes
    {
      'controller' => controller_name,
      'action' => action_name
    }
  end
end
