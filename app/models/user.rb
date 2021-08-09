class User < ApplicationRecord
  has_and_belongs_to_many :courses
  belongs_to :company

  # belongs_to :course
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    role.name == 'Admin'
  end
        
        




end
