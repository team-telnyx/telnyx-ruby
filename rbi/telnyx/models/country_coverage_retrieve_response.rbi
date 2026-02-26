# typed: strong

module Telnyx
  module Models
    class CountryCoverageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CountryCoverageRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Hash[Symbol, Telnyx::CountryCoverageAPI])) }
      attr_reader :data

      sig do
        params(data: T::Hash[Symbol, Telnyx::CountryCoverageAPI::OrHash]).void
      end
      attr_writer :data

      sig do
        params(
          data: T::Hash[Symbol, Telnyx::CountryCoverageAPI::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns({ data: T::Hash[Symbol, Telnyx::CountryCoverageAPI] })
      end
      def to_hash
      end
    end
  end
end
