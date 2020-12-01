class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?
  #contentが空だとダメですよ、ただしファイルが添付されてますか？がtrueの場合は除く

  def was_attached? #ファイルは添付されてますか？
    self.image.attached?
  end
end

