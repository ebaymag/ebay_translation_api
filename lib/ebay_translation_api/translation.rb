class EbayTranslationAPI
  scope :translation do
    # @see https://developer.ebay.com/api-docs/sell/account/resources/fulfillment_policy/methods/createFulfillmentPolicy
    operation :get do
      option :site, Site
      option :data, proc(&:to_h) # TODO: add model to validate input

      format "form"
      path { "/translate_listing" }
      http_method :post
      body { data }
    end
  end
end
