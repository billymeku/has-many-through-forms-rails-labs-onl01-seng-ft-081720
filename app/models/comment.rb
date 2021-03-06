class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user_atts)
    self.user = User.find_or_create_by(username: user_atts[:username]) unless user_atts[:username].blank?
  end

end
