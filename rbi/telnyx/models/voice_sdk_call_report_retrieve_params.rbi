# typed: strong

module Telnyx
  module Models
    class VoiceSDKCallReportRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VoiceSDKCallReportRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :call_id

      sig do
        params(
          call_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(call_id:, request_options: {})
      end

      sig do
        override.returns(
          { call_id: String, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
