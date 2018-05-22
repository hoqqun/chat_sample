class Message < ApplicationRecord
  after_create_commit { MessageBroadcastJob.perform_later self }

  validates :content, presence: true

  def send_date
    self.created_at.strftime("%Y年 %m月 %d日 %H時%M分")
  end
end
