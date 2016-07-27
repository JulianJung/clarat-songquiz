module ApplicationHelper
  def active? path
    if request.path == path
      true
    else
      false
    end
  end
end
