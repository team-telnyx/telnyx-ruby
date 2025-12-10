# typed: strong

module Telnyx
  module Models
    # (Required for public company) stock exchange.
    module StockExchange
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::StockExchange) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NONE = T.let(:NONE, Telnyx::StockExchange::TaggedSymbol)
      NASDAQ = T.let(:NASDAQ, Telnyx::StockExchange::TaggedSymbol)
      NYSE = T.let(:NYSE, Telnyx::StockExchange::TaggedSymbol)
      AMEX = T.let(:AMEX, Telnyx::StockExchange::TaggedSymbol)
      AMX = T.let(:AMX, Telnyx::StockExchange::TaggedSymbol)
      ASX = T.let(:ASX, Telnyx::StockExchange::TaggedSymbol)
      B3 = T.let(:B3, Telnyx::StockExchange::TaggedSymbol)
      BME = T.let(:BME, Telnyx::StockExchange::TaggedSymbol)
      BSE = T.let(:BSE, Telnyx::StockExchange::TaggedSymbol)
      FRA = T.let(:FRA, Telnyx::StockExchange::TaggedSymbol)
      ICEX = T.let(:ICEX, Telnyx::StockExchange::TaggedSymbol)
      JPX = T.let(:JPX, Telnyx::StockExchange::TaggedSymbol)
      JSE = T.let(:JSE, Telnyx::StockExchange::TaggedSymbol)
      KRX = T.let(:KRX, Telnyx::StockExchange::TaggedSymbol)
      LON = T.let(:LON, Telnyx::StockExchange::TaggedSymbol)
      NSE = T.let(:NSE, Telnyx::StockExchange::TaggedSymbol)
      OMX = T.let(:OMX, Telnyx::StockExchange::TaggedSymbol)
      SEHK = T.let(:SEHK, Telnyx::StockExchange::TaggedSymbol)
      SSE = T.let(:SSE, Telnyx::StockExchange::TaggedSymbol)
      STO = T.let(:STO, Telnyx::StockExchange::TaggedSymbol)
      SWX = T.let(:SWX, Telnyx::StockExchange::TaggedSymbol)
      SZSE = T.let(:SZSE, Telnyx::StockExchange::TaggedSymbol)
      TSX = T.let(:TSX, Telnyx::StockExchange::TaggedSymbol)
      TWSE = T.let(:TWSE, Telnyx::StockExchange::TaggedSymbol)
      VSE = T.let(:VSE, Telnyx::StockExchange::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::StockExchange::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
