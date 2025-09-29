# typed: strong

module Telnyx
  module Models
    class DocumentGenerateDownloadLinkResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DocumentGenerateDownloadLinkResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DocumentGenerateDownloadLinkResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Pre-signed temporary URL for downloading the document
        sig { returns(String) }
        attr_accessor :url

        sig { params(url: String).returns(T.attached_class) }
        def self.new(
          # Pre-signed temporary URL for downloading the document
          url:
        )
        end

        sig { override.returns({ url: String }) }
        def to_hash
        end
      end
    end
  end
end
