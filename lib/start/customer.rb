module Start
  class Customer < BaseResource
    self.path = '/customers'

    #card_options = {
    #        card: {
    #          number:  "4242424242424242",
    #          exp_month: 1,
    #          exp_year:  2023,
    #          cvc: 123
    #        }
    #      }
    def self.add_card id, card_options
      handle_response Start.post("#{path}/#{id}/cards", body: card_options)
    end
  end
end
