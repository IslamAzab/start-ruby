module Start
  class Customer < BaseResource
    self.path = '/customers'

    def add_card id, card_options
      handle_response Start.post("#{path}/#{id}/cards", body: card_options)
    end
  end
end
