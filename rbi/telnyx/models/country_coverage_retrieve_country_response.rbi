# typed: strong

module Telnyx
  module Models
    class CountryCoverageRetrieveCountryResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CountryCoverageRetrieveCountryResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CountryCoverageAPI)) }
      attr_reader :data

      sig { params(data: Telnyx::CountryCoverageAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CountryCoverageAPI::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CountryCoverageAPI }) }
      def to_hash
      end
    end
  end
end
