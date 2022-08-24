# == Schema Information
#
# Table name: payments
#
#  id          :bigint           not null, primary key
#  payer_name  :string
#  payer_phone :string
#  description :string
#  value       :string
#  payer_city  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  product_id  :integer
#  pix         :string
#  qr_code     :string
#
require "test_helper"

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
