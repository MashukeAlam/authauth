class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    return admin
  end

  def student?
    return role == 1
  end

  def teacher
    return role == 2
  end

  def regular
    return role == nil
  end
end
