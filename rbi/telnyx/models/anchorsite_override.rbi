# typed: strong

module Telnyx
  module Models
    # `Latency` directs Telnyx to route media through the site with the lowest
    # round-trip time to the user's connection. Telnyx calculates this time using ICMP
    # ping messages. This can be disabled by specifying a site to handle all media.
    module AnchorsiteOverride
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::AnchorsiteOverride) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LATENCY = T.let(:Latency, Telnyx::AnchorsiteOverride::TaggedSymbol)
      CHICAGO_IL =
        T.let(:"Chicago, IL", Telnyx::AnchorsiteOverride::TaggedSymbol)
      ASHBURN_VA =
        T.let(:"Ashburn, VA", Telnyx::AnchorsiteOverride::TaggedSymbol)
      SAN_JOSE_CA =
        T.let(:"San Jose, CA", Telnyx::AnchorsiteOverride::TaggedSymbol)
      SYDNEY_AUSTRALIA =
        T.let(:"Sydney, Australia", Telnyx::AnchorsiteOverride::TaggedSymbol)
      AMSTERDAM_NETHERLANDS =
        T.let(
          :"Amsterdam, Netherlands",
          Telnyx::AnchorsiteOverride::TaggedSymbol
        )
      LONDON_UK = T.let(:"London, UK", Telnyx::AnchorsiteOverride::TaggedSymbol)
      TORONTO_CANADA =
        T.let(:"Toronto, Canada", Telnyx::AnchorsiteOverride::TaggedSymbol)
      VANCOUVER_CANADA =
        T.let(:"Vancouver, Canada", Telnyx::AnchorsiteOverride::TaggedSymbol)
      FRANKFURT_GERMANY =
        T.let(:"Frankfurt, Germany", Telnyx::AnchorsiteOverride::TaggedSymbol)

      sig do
        override.returns(T::Array[Telnyx::AnchorsiteOverride::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
