class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true, length: { maximum: 100 }

  after_create_commit { broadcast_append_to "chatroom_channel", target: "messages" }
end
