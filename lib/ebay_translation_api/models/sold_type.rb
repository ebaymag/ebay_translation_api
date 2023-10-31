class EbayTranslationAPI
  # Service type
  class SoldType < String
    extend Evil::Client::Dictionary["#{DICTIONARY_FILE}#sold_type"]

    def self.call(value)
      super value.to_s.upcase
    end
  end
end
