class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: Rails.application.credentials.iex_api[:publishable_token],
      secret_token: Rails.application.credentials.iex_api[:secret_token],
      endpoint: Rails.application.credentials.iex_api[:base_url]
    )
    client.price(ticker_symbol)
  end
end
