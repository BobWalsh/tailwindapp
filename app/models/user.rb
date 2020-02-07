# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items
  has_many :tags

  def CreateTags
    the_user_id = self.id
    puts "The user id for this is: #{the_user_id}" 
    crThetag.create!([
      {user_id: self.id, color: self.randomColor(), name: "JavaScript"}
    ])
  end
  def testme
    ["red","green"].sample
  end

  def randomColor
    [
      "#80BD9E",
     "90AFC5" ,
    "#336B87",
    "#2A3132",
    "#763626",
    "#46211A",
    "#693D3D",
    "#BA5536",
    "#A43820",
    "#505160",
    "#AEBD38",
    "#598234",
    "#003B46",
    "#07575B",
    "#66A5AD",
    "#2E4600",
    "#486B00",
    "#7D4427",
    "#004445",
    "#2C7873",
    "#6FB98F",
    "#3BC8AC",
    "#324851",
    "#86AC41",
    "#34675C",
    "#4CB5F5",
    "#34675C",
    "#20948B",
    "#6AB187",
    "#1E434C",
    "#9B4F0F",
    "#C99E10",
    "#1995AD",
    "#9A9EAB",
    "#5D535E",
    "#063852",
    "#75B1A9",
    "#4F6457",
    "#EB8A44",
    "#4B7447",
    "#8EBA43",
    "#363237",
    "#2D4262",
    "#73605B",
    "#2E2300",
    "#6E6702",
    "#50312F",
    "#CB0000",
    "#3F6C45",
    "#34888C",
    "#CB6318",
    "#0F1B07",
    "#5C821A",
    "#00293C",
    "#1E656D",
    "#F62A00",
    "#626D71",
    "#B38867",
    "#258039",
    "#31A9B8",
    "#CF3721",
    "#EE693F",
    "#739F3D",
    "#752A07",
    "#EB5E30",
    "#1E1E26",
    "#283655",
    "#4D648D",
    "#F25C00",
    "#F9A603",
    "#A1BE95",
    "#92AAC7",
    "#ED5752",
    "#4897D8",
    "#FA6E59",
    "#F8A055",
    "#AF4425",
    "#662E1C",
    "#C9A66B",
    "#4C3F54",
    "#D13525",
    "#486824",
    "#FAAF08",
    "#FA812F",
    "#FA4032",
    "#BBCF4A",
    "#E73F0B",
    "#A11FOC",
    "#FD974F",
    "#C60000",
    "#805A3B",
    "#231B12",
    "#7F152E",
    "#D61800",
    "#E94F08",
    "#867666",
    "#E1B80D",
    "#265C00",
    "#68A225",
    "#A10115",
    "#D72C16",
    "#7AA802",
    "#F78B2D",
    "#523634",
    "#B6452C",
    "#7E7B15",
    "#563E20",
    "#563E20",
    "#662225",
    "#B51DOA",
    "#7D5EC3",
    "#4B4345",
    "#556DAC",
    "#755248",
    "#2988BC",
    "#2F496E",
    "#ED8C72"].sample
    
  end
end
