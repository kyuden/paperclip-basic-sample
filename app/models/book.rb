class Book < ActiveRecord::Base
  attr_accessible :price, :publish, :title, :avatar
  has_attached_file :avatar, styles: {midium: "300x300#", thumb: "`100x100#" }, default_url: "/system/books/:style/"

  validates_attachment :avatar, presence: true,
  content_type: { content_type: ['image/jpeg', 'image/pjpeg', 'image/gif', 'image/png', 'image/x-png'] }, size: { less_than: 3.megabytes }
end
