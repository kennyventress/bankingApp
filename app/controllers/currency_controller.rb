class CurrencyController < ApplicationController
  def currency
    if params[:from_currency] && params[:to_currency] && params[:amount]
      from = params[:from_currency]
      to = params[:to_currency]
      amount = params[:amount].to_f

      api_key = ENV["EXCHANGE_RATE_API_KEY"]
      url = URI("https://v6.exchangerate-api.com/v6/#{api_key}/latest/#{from}")
      response = Net::HTTP.get(url)
      data = JSON.parse(response)

      if data["rates"] && data["rates"][to]
        rate = data["rates"][to]
        @converted_amount = (amount * rate).round(2)
      else
        @converted_amount = "Conversion not available"
      end
    end
  end
end
# This controller handles currency conversion requests.
# It provides an index action to display available currencies and a convert action to perform the conversion.
