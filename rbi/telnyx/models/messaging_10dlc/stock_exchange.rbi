# typed: strong

module Telnyx
  module Models
    module Messaging10dlc
      # (Required for public company) stock exchange.
      module StockExchange
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::Messaging10dlc::StockExchange) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE = T.let(:NONE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        NASDAQ =
          T.let(:NASDAQ, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        NYSE = T.let(:NYSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        AMEX = T.let(:AMEX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        AMX = T.let(:AMX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        ASX = T.let(:ASX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        B3 = T.let(:B3, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        BME = T.let(:BME, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        BSE = T.let(:BSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        FRA = T.let(:FRA, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        ICEX = T.let(:ICEX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        JPX = T.let(:JPX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        JSE = T.let(:JSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        KRX = T.let(:KRX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        LON = T.let(:LON, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        NSE = T.let(:NSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        OMX = T.let(:OMX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        SEHK = T.let(:SEHK, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        SSE = T.let(:SSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        STO = T.let(:STO, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        SWX = T.let(:SWX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        SZSE = T.let(:SZSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        TSX = T.let(:TSX, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        TWSE = T.let(:TWSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)
        VSE = T.let(:VSE, Telnyx::Messaging10dlc::StockExchange::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::Messaging10dlc::StockExchange::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
