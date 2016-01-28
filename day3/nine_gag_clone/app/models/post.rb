class Post < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "300x300>" }

  validates :title, :presence => true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
