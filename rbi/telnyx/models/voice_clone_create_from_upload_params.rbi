# typed: strong

module Telnyx
  module Models
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VoiceCloneCreateFromUploadParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.anything) }
      attr_accessor :upload_params

      sig do
        params(
          upload_params: T.anything,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(upload_params:, request_options: {})
      end

      sig do
        override.returns(
          { upload_params: T.anything, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
