# typed: strong

module Telnyx
  module Models
    class BrowserSessionRetrieveArtifactResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::BrowserSessionRetrieveArtifactResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BrowserSessionRetrieveArtifactResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(String) }
        attr_accessor :checksum

        sig { returns(String) }
        attr_accessor :content_type

        sig { returns(Time) }
        attr_accessor :created_at

        # Signed relative path (starts with /v2/artifact_downloads/). Prepend your API
        # host, e.g. https://api.telnyx.com, before calling it.
        sig { returns(String) }
        attr_accessor :download_url

        sig { returns(Time) }
        attr_accessor :expires_at

        sig { returns(String) }
        attr_accessor :session_id

        sig { returns(Integer) }
        attr_accessor :size_bytes

        sig { returns(String) }
        attr_accessor :type

        sig do
          params(
            id: String,
            action_id: String,
            checksum: String,
            content_type: String,
            created_at: Time,
            download_url: String,
            expires_at: Time,
            session_id: String,
            size_bytes: Integer,
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          action_id:,
          checksum:,
          content_type:,
          created_at:,
          # Signed relative path (starts with /v2/artifact_downloads/). Prepend your API
          # host, e.g. https://api.telnyx.com, before calling it.
          download_url:,
          expires_at:,
          session_id:,
          size_bytes:,
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_id: String,
              checksum: String,
              content_type: String,
              created_at: Time,
              download_url: String,
              expires_at: Time,
              session_id: String,
              size_bytes: Integer,
              type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
