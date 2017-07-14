class Topfoto < ApplicationRecord
  has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
  has_many :comments, :dependent => :delete_all
  validates :foto, presence: true
end
