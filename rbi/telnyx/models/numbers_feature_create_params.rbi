# typed: strong

module Telnyx
  module Models
    class NumbersFeatureCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::NumbersFeatureCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      sig do
        params(
          phone_numbers: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(phone_numbers:, request_options: {})
      end

      sig do
        override.returns(
          {
            phone_numbers: T::Array[String],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
