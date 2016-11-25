module NotificationsHelper

  def notification_type notification
    case notification.kind
    when "adoption"
      puts "*"*80
      puts notification.inspect
      puts "*"*80
      # FIXME find a way to go to messages page with user who wants to adopt in parameter
      # FIXME put an if on messages/new, if parameter is empty show select, else show person to send
      link_to notification.content, new_message_path(message_to: notification.sender.name)
    when "report"
      link_to notification.content, new_message_path(message_to: notification.sender.name)
    when "comment"
      link_to notification.content, new_message_path(message_to: notification.sender.name)
    end
  end

  def adopted_content post
    "#{current_user.name} deseja adotar #{post.animal.name}! Envie uma mensagem para #{current_user.name}"
  end

  def adopted_with_message_content post
    "#{current_user.name} deseja adotar #{post.animal.name} e enviou uma mensagem! Veja a mensagem que #{current_user.name} enviou"
  end

  def reported_message post
    "Você foi denunciado por #{current_user.name}! Converse com #{current_user.name}, para entender o porquê"
  end

  def comment_message post
    "#{current_user.name} comentou no post do #{post.animal.name}! Vá na sua publicação para ver o que foi comentado"
  end

end