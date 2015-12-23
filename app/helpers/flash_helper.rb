module FlashHelper
  # <div class="alert-box [success alert secondary]">
  #   This is an alert box.
  #   <a href="" class="close">×</a>
  # </div>
  DEFAULT_KEY_MATCHING = {
    :alert     => :alert,
    :notice    => :success,
    :info      => :info,
    :secondary => :secondary,
    :success   => :success,
    :error     => :alert,
    :warning   => :warning
  }
  
  def display_flash_messages(key_matching = {})
    capture do
      flash.each do |key, value|
        alert_class = DEFAULT_KEY_MATCHING[key.to_sym]
        concat alert_box(value, alert_class)
      end
    end
  end

private

  def alert_box(value, alert_class)
    content_tag :div, :data => { :alert => "" }, :class => "alert-box #{alert_class}" do
      concat value
      concat close_link
    end
  end

  def close_link
    link_to('×', "#", :class => :close)
  end

end
