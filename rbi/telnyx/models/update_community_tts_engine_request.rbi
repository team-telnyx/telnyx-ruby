# typed: strong

module Telnyx
  module Models
    class UpdateCommunityTtsEngineRequest < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::UpdateCommunityTtsEngineRequest,
            Telnyx::Internal::AnyHash
          )
        end

      # What the engine supports. An unknown key is rejected.
      sig { returns(T.nilable(Telnyx::CommunityTtsEngineCapabilities)) }
      attr_reader :capabilities

      sig do
        params(
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash
        ).void
      end
      attr_writer :capabilities

      sig { returns(T.nilable(Integer)) }
      attr_reader :connect_timeout_ms

      sig { params(connect_timeout_ms: Integer).void }
      attr_writer :connect_timeout_ms

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      sig { returns(T.nilable(String)) }
      attr_accessor :data_retention_policy_url

      sig { returns(T.nilable(String)) }
      attr_accessor :documentation_url

      sig do
        returns(T.nilable(T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol]))
      end
      attr_reader :supported_audio_formats

      sig do
        params(
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol]
        ).void
      end
      attr_writer :supported_audio_formats

      # `private`: only your organization can use the engine. `public`: any organization
      # can, once it is `active`.
      sig { returns(T.nilable(Telnyx::CommunityTtsEngineVisibility::OrSymbol)) }
      attr_reader :visibility

      sig do
        params(visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol).void
      end
      attr_writer :visibility

      sig { returns(T.nilable(String)) }
      attr_accessor :voices_api_key_ref

      # See the create request.
      sig { returns(T.nilable(String)) }
      attr_reader :voices_url

      sig { params(voices_url: String).void }
      attr_writer :voices_url

      # See the create request.
      sig { returns(T.nilable(String)) }
      attr_reader :websocket_url

      sig { params(websocket_url: String).void }
      attr_writer :websocket_url

      # Only the fields you send change. `name` cannot be changed. Sending `null` for
      # `websocket_url`, `voices_url`, `supported_audio_formats`, `capabilities` or
      # `connect_timeout_ms` is refused. Changing `websocket_url`, `voices_url`,
      # `supported_audio_formats` or `capabilities`, or making a `private` engine
      # `public`, sends the engine back to `status: draft` and clears its review.
      sig do
        params(
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
          connect_timeout_ms: Integer,
          contact_email: T.nilable(String),
          data_retention_policy_url: T.nilable(String),
          documentation_url: T.nilable(String),
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          voices_api_key_ref: T.nilable(String),
          voices_url: String,
          websocket_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # What the engine supports. An unknown key is rejected.
        capabilities: nil,
        connect_timeout_ms: nil,
        contact_email: nil,
        data_retention_policy_url: nil,
        documentation_url: nil,
        supported_audio_formats: nil,
        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        visibility: nil,
        voices_api_key_ref: nil,
        # See the create request.
        voices_url: nil,
        # See the create request.
        websocket_url: nil
      )
      end

      sig do
        override.returns(
          {
            capabilities: Telnyx::CommunityTtsEngineCapabilities,
            connect_timeout_ms: Integer,
            contact_email: T.nilable(String),
            data_retention_policy_url: T.nilable(String),
            documentation_url: T.nilable(String),
            supported_audio_formats:
              T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
            visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
            voices_api_key_ref: T.nilable(String),
            voices_url: String,
            websocket_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
