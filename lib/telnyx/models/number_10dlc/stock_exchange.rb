# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # (Required for public company) stock exchange.
      module StockExchange
        extend Telnyx::Internal::Type::Enum

        NONE = :NONE
        NASDAQ = :NASDAQ
        NYSE = :NYSE
        AMEX = :AMEX
        AMX = :AMX
        ASX = :ASX
        B3 = :B3
        BME = :BME
        BSE = :BSE
        FRA = :FRA
        ICEX = :ICEX
        JPX = :JPX
        JSE = :JSE
        KRX = :KRX
        LON = :LON
        NSE = :NSE
        OMX = :OMX
        SEHK = :SEHK
        SSE = :SSE
        STO = :STO
        SWX = :SWX
        SZSE = :SZSE
        TSX = :TSX
        TWSE = :TWSE
        VSE = :VSE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
