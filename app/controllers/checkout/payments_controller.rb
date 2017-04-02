class Checkout::PaymentsController < ApplicationController
  def create
    # Email: c47700878080133650543@sandbox.pagseguro.com.br
    # Senha: 46eR4Kg7dU99vMK9
    # Cartão de Crédito: 4111111111111111 / Bandeira: VISA Válido até: 12/2030 CVV: 123

    ad = Ad.find(params[:ad_id])
    ad.processing!

    order = Order.create( ad: ad, buyer_id: current_member.id )
    order.waiting!

    payment = PagSeguro::PaymentRequest.new

    payment.reference = order.id
    payment.notification_url = checkout_notifications_url # FIX LATER http://localhost:3000/checkout/notifications
    payment.redirect_url = site_ad_detail_url(ad) # http://localhost:3000/site/ad_detail/25

    payment.items << {
        id: ad.id,
        description: ad.title,
        amount: ad.price.to_s.gsub(',' , '.')
    }

    response = payment.register

    if response.errors.any?
        redirect_to site_ad_detail_path(ad), alert: "Erro ao processar compra… Entre em contato com o SAC (xx) xxx.xxxx"
    else
        redirect_to response.url
    end
  end
end
