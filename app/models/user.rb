class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
  
  has_many :records
  belongs_to :role, optional: true
  
  validates :username, presence: true

  
  def assign_role
    self.role = Role.find_by name: 'general' if role.nil?
  end

  def admin?
    role.name == 'admin'
  end

  def general?
    role.name == 'general'
  end
end
