module ApplicationHelper
  def identification_types_for_select
    User.identification_types.keys.map do |identification_type|
      [I18n.t("user.identification_types.#{identification_type}"), identification_type]
    end
  end

  def custom_materialize_error(object)
    if object.errors.any?
      flash_messages = []

      object.errors.full_messages.each do |message|
        text = "#{message}"
        flash_messages << text.html_safe if message
      end

      flash_messages.join("\n").html_safe
    end
  end
end
