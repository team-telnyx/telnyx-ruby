# typed: strong

module Telnyx
  module Models
    class NumberOrderUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumberOrderUpdateParams, Telnyx::Internal::AnyHash)
        end

      # A customer reference string for customer look ups.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(T::Array[Telnyx::UpdateRegulatoryRequirement])) }
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash]
        ).void
      end
      attr_writer :regulatory_requirements

      sig do
        params(
          customer_reference: String,
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A customer reference string for customer look ups.
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_reference: String,
            regulatory_requirements:
              T::Array[Telnyx::UpdateRegulatoryRequirement],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
