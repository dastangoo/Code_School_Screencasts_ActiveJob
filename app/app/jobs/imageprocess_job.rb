class ImageprocessJob < ApplicationJob
  queue_as do
    image = self.arguments.first
    if image.user.paying?
      :priority
    else
      :default
    end
  end

  def perform(*args)
    # Do something later
  end
end
