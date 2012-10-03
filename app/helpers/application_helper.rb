module ApplicationHelper
  def date_formatter(date)
    date.strftime('%d.%m.%Y')
  end
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
