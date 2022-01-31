gem 'qrcode_pix_ruby'

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
#  product_id  :integer
#  pix         :string
#  qr_code     :string
#
class Payment < ApplicationRecord
  belongs_to :product
  after_create :generate_pix

  private

  def generate_pix
    pix = QrcodePixRuby::Payload.new(
      pix_key: '47526715819',
      description: description,
      merchant_name: payer_name,
      merchant_city: payer_city,
      transaction_id: 'TID12345',
      amount: amount,
      currency: '986',
      country_code: 'BR',
      repeatable: false
    )
    product = Product.find(product_id)
    user_description = description
    self.description = user_description + ' | ITEM: ' + product.name
    self.pix = pix.payload
    self.qr_code = pix.base64
    save!
  end
end
