# typed: strong

module Telnyx
  module Models
    class AccessIPRangeCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AccessIPRangeCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :cidr_block

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      sig do
        params(
          cidr_block: String,
          description: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(cidr_block:, description: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            cidr_block: String,
            description: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
