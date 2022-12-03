gem 'qrcode_pix_ruby'

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
class Payment < ApplicationRecord
  attr_accessor :amount
  belongs_to :product
  after_create :generate_pix

  def amount
    value.tr('R$', '').tr('.', '').tr(',', '.').to_f if value
  end

  private

  def generate_pix
    pix = QrcodePixRuby::Payload.new(
      pix_key: '4783cc05-2b06-4b22-a090-4c6bff1e6038',
      merchant_name: payer_name,
      transaction_id: product.id.to_s + ':' + id.to_s,
      amount: amount,
      currency: '986',
      country_code: 'BR',
      repeatable: true
    )
    self.description = description + ' ' + pix.transaction_id
    self.pix = pix.payload
    self.qr_code = pix.base64
    save!
  end
end
