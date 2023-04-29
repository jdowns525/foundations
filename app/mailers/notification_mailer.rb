class NotificationMailer < ApplicationMailer
  def event_notification(user, event)
    @user = user
    @event = event

    mail(to: @user.email, subject: 'New Event Notification')
  end
end
