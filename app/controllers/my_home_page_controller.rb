require "net/http"
require "json"
class MyHomePageController < ApplicationController
  def home
  end
  def accounts
  end
  def transfer
  end
  def transactions
  end
  def currency
    if params[:from_currency] && params[:to_currency] && params[:amount]
      from = params[:from_currency]
      to = params[:to_currency]
      amount = params[:amount].to_f

      api_key = ENV["EXCHANGE_RATE_API_KEY"]
      url = URI("https://api.exchangerate-api.com/v4/latest/#{from}")
      response = Net::HTTP.get(url)
      puts "Response from API: #{response}"
      # Parse the JSON response
      data = JSON.parse(response)
      puts data
      # Check if the API response contains the conversion rates

      if data["rates"] && data["rates"][to]
        rate = data["rates"][to]
        puts "Conversion rate from #{from} to #{to}: #{rate}"
        @converted_amount = (amount * rate).round(2)
      else
        @converted_amount = "Conversion not available"
      end
    end
  end
  def contact
  end
  def about
  end
end
