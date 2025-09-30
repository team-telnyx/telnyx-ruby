# typed: strong

module Telnyx
  module Models
    class BillingGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BillingGroupCreateParams, Telnyx::Internal::AnyHash)
        end

      # A name for the billing group
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A name for the billing group
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { name: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
