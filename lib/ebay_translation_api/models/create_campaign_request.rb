require_relative "./campaign"

class EbayTranslationAPI
  # @see https://developer.ebay.com/api-docs/sell/marketing/types/pls:CreateCampaignRequest
  class CreateCampaignRequest < Campaign
    option :campaignId, as: :campaign_id, optional: true
  end
end
