module CurrencyHelper
  def format_currency(amount, currency)
    number_to_currency(amount, unit: currency_symbol(currency))
  end

  def currency_symbol(currency)
    case currency
    when "USD"
      "$"
    when "EUR"
      "€"
    when "GBP"
      "£"
    else
      currency
    end
  end

  def available_currencies
    [ "USD", "EUR", "GBP", "JPY", "AUD", "CAD" ]
  end
end
# This helper module provides methods to format currency amounts and symbols.
