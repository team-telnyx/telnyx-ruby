# typed: strong

module Telnyx
  module Models
    class ConferenceRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ConferenceRetrieveParams, Telnyx::Internal::AnyHash)
        end

      # Region where the conference data is located
      sig do
        returns(T.nilable(Telnyx::ConferenceRetrieveParams::Region::OrSymbol))
      end
      attr_reader :region

      sig do
        params(region: Telnyx::ConferenceRetrieveParams::Region::OrSymbol).void
      end
      attr_writer :region

      sig do
        params(
          region: Telnyx::ConferenceRetrieveParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Region where the conference data is located
        region: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            region: Telnyx::ConferenceRetrieveParams::Region::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Region where the conference data is located
      module Region
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ConferenceRetrieveParams::Region)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUSTRALIA =
          T.let(
            :Australia,
            Telnyx::ConferenceRetrieveParams::Region::TaggedSymbol
          )
        EUROPE =
          T.let(:Europe, Telnyx::ConferenceRetrieveParams::Region::TaggedSymbol)
        MIDDLE_EAST =
          T.let(
            :"Middle East",
            Telnyx::ConferenceRetrieveParams::Region::TaggedSymbol
          )
        US = T.let(:US, Telnyx::ConferenceRetrieveParams::Region::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ConferenceRetrieveParams::Region::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
