class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_api[:publishable_token],
      secret_token: Rails.application.credentials.iex_api[:secret_token],
      endpoint: Rails.application.credentials.iex_api[:base_url]
    )
    new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name,
        last_price: client.price(ticker_symbol))
  end
end
