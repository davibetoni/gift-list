# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  value      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo      :string
#  store_url  :string
#  for        :integer          default("wedding")
#
class Product < ApplicationRecord
  has_many :payments, dependent: :destroy
  enum for: { wedding: 0, bachelor: 1 }

  def paid?
    paid >= value
  end

  def paid
    amount_paid
  end

  private 

  def amount_paid
    payments.map(&:amount).compact.sum
  end
end
