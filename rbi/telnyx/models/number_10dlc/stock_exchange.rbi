# typed: strong

module Telnyx
  module Models
    module Number10dlc
      # (Required for public company) stock exchange.
      module StockExchange
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Number10dlc::StockExchange) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE = T.let(:NONE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        NASDAQ =
          T.let(:NASDAQ, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        NYSE = T.let(:NYSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        AMEX = T.let(:AMEX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        AMX = T.let(:AMX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        ASX = T.let(:ASX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        B3 = T.let(:B3, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        BME = T.let(:BME, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        BSE = T.let(:BSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        FRA = T.let(:FRA, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        ICEX = T.let(:ICEX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        JPX = T.let(:JPX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        JSE = T.let(:JSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        KRX = T.let(:KRX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        LON = T.let(:LON, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        NSE = T.let(:NSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        OMX = T.let(:OMX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        SEHK = T.let(:SEHK, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        SSE = T.let(:SSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        STO = T.let(:STO, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        SWX = T.let(:SWX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        SZSE = T.let(:SZSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        TSX = T.let(:TSX, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        TWSE = T.let(:TWSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)
        VSE = T.let(:VSE, Telnyx::Number10dlc::StockExchange::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Number10dlc::StockExchange::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
