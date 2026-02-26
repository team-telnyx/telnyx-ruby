# typed: strong

module Telnyx
  module Models
    class RegionInformation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RegionInformation, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :region_name

      sig { params(region_name: String).void }
      attr_writer :region_name

      sig do
        returns(T.nilable(Telnyx::RegionInformation::RegionType::TaggedSymbol))
      end
      attr_reader :region_type

      sig do
        params(
          region_type: Telnyx::RegionInformation::RegionType::OrSymbol
        ).void
      end
      attr_writer :region_type

      sig do
        params(
          region_name: String,
          region_type: Telnyx::RegionInformation::RegionType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(region_name: nil, region_type: nil)
      end

      sig do
        override.returns(
          {
            region_name: String,
            region_type: Telnyx::RegionInformation::RegionType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module RegionType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RegionInformation::RegionType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNTRY_CODE =
          T.let(
            :country_code,
            Telnyx::RegionInformation::RegionType::TaggedSymbol
          )
        RATE_CENTER =
          T.let(
            :rate_center,
            Telnyx::RegionInformation::RegionType::TaggedSymbol
          )
        STATE =
          T.let(:state, Telnyx::RegionInformation::RegionType::TaggedSymbol)
        LOCATION =
          T.let(:location, Telnyx::RegionInformation::RegionType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RegionInformation::RegionType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
