# typed: strong

module Telnyx
  module Models
    class NumberOrderPhoneNumberUpdateRequirementsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberOrderPhoneNumberUpdateRequirementsParams,
            Telnyx::Internal::AnyHash
          )
        end

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
          regulatory_requirements:
            T::Array[Telnyx::UpdateRegulatoryRequirement::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(regulatory_requirements: nil, request_options: {})
      end

      sig do
        override.returns(
          {
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
