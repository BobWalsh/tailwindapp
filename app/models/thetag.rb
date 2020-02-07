# == Schema Information
#
# Table name: thetags
#
#  id          :bigint           not null, primary key
#  name        :string
#  color       :string
#  is_favorite :boolean
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Thetag < ApplicationRecord
end
