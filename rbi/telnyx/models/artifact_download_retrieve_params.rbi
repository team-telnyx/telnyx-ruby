# typed: strong

module Telnyx
  module Models
    class ArtifactDownloadRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ArtifactDownloadRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :artifact_id

      sig { returns(String) }
      attr_accessor :expires

      sig { returns(String) }
      attr_accessor :sig_

      sig do
        params(
          artifact_id: String,
          expires: String,
          sig_: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(artifact_id:, expires:, sig_:, request_options: {})
      end

      sig do
        override.returns(
          {
            artifact_id: String,
            expires: String,
            sig_: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
