class Checkout::PaymentsController < ApplicationController
  def create
    # Email: c47700878080133650543@sandbox.pagseguro.com.br
    # Senha: 46eR4Kg7dU99vMK9
    # Cartão de Crédito: 4111111111111111 / Bandeira: VISA Válido até: 12/2030 CVV: 123

    ad = Ad.find(params[:ad_id])
    ad.processing!

    order = Order.create( ad: ad, buyer_id: current_member.id )
    order.waiting!

    render text: "Processando.... Pedido: #{order.status_i18n} - Anúncio: #{ad.status_i18n}"
  end
end
