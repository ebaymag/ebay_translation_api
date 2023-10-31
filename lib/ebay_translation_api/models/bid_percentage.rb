class EbayTranslationAPI
  class BidPercentage < Evil::Client::Model
    option :value, proc(&:to_s)

    validate do
      unless /\A\d{1,2}(?:\.\d)?\z/ =~ value.to_s
        next errors.add :bid_wrong_format, value: value
      end
      unless (1..100).cover?(BigDecimal(value))
        errors.add :bid_out_of_range, value: value
      end
    end

    def self.call(raw)
      raw && new(value: raw)
    end

    def to_s
      @value
    end
  end
end
