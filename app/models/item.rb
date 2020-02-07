# == Schema Information
#
# Table name: items
#
#  id                 :bigint           not null, primary key
#  user_id            :integer
#  body               :text
#  description        :text
#  is_favorite        :boolean
#  source_flag        :string
#  url                :string
#  time_value         :integer
#  money_value        :integer
#  date_next_action   :datetime
#  the_tag_list       :text
#  original_text      :text
#  flags              :string
#  page_image_url     :string
#  page_image_status  :string
#  code_project_name  :string
#  code_file_name     :string
#  code_file_language :string
#  code_body          :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Item < ApplicationRecord
end
