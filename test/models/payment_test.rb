# == Schema Information
#
# Table name: payments
#
#  id          :bigint           not null, primary key
#  payer_name  :string
#  payer_phone :string
#  description :string
#  amount      :float
#  payer_city  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
