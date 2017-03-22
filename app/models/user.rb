class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_and_belongs_to_many :roles
  has_and_belongs_to_many :packages
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   def has_role(rolename)
   	 	roles.pluck(:name).include?(rolename)
   end
end
