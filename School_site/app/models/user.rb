class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  after_commit :add_default_avatar, on: %i[create update]

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize:"150x150!").processed 
    else
      return "/default_profile.png"
    end
  end

  private
  def add_default_avatar
    unless avatar.attached?
       avatar.attach(
        io: File.open(
          Rails.root.join(
            'app', 'assets', 'images', 'default_profile.png'
          )
        ), filename: 'default_profile.png',
        content_type: 'image/png'
      )
    end
  end
end
