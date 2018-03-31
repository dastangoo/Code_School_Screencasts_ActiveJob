class EmailsJob < ApplicationJob
  queue_as :default

  def perform(user)
    UserMailer.welcome(user).deliver
  end
end
