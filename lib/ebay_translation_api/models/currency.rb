class EbayTranslationAPI
  # Key for a currency
  class Currency < Evil::Client::Model
    extend  Evil::Client::Dictionary["#{DICTIONARY_FILE}#currency"]
    include Dry::Equalizer(:code)

    option :code
    option :name

    def self.call(item)
      rec = item.is_a?(self) ? item : find { |c| c.code == item.to_s.upcase }
      super(rec || item)
    end
  end
end
