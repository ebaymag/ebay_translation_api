require_relative "program/opt_in"
require_relative "program/get"

class EbayAPI
  scope :sell do
    scope :account do
      scope :program do
        path { "program" }
      end
    end
  end
end
