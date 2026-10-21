# typed: strong

module Telnyx
  module Models
    class TtsIntegrationRetrieveDiscoverableResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig { returns(Telnyx::CommunityTtsEngineListMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::CommunityTtsEngineListMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data::OrHash
            ],
          meta: Telnyx::CommunityTtsEngineListMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data
              ],
            meta: Telnyx::CommunityTtsEngineListMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::TtsIntegrationRetrieveDiscoverableResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        # Whether the engine can serve traffic right now, independent of `visibility` and
        # `review_status`. `draft`: not yet approved (new and awaiting its first review,
        # rejected and awaiting a fix, or approved earlier and awaiting re-review after a
        # review-sensitive change). `active`: serving traffic. `disabled`: owner-paused,
        # reversible via `enable`. `suspended`: paused by Telnyx (repeated failures of a
        # public engine, or an abuse action); the owner cannot clear this by calling
        # `enable`, and Telnyx can reinstate it.
        sig { returns(Telnyx::CommunityTtsEngineStatus::TaggedSymbol) }
        attr_accessor :status

        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        sig { returns(Telnyx::CommunityTtsEngineVisibility::TaggedSymbol) }
        attr_accessor :visibility

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

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :data_retention_policy_url

        sig { returns(T.nilable(String)) }
        attr_accessor :documentation_url

        sig do
          returns(
            T.nilable(T::Array[Telnyx::CommunityTtsAudioFormat::TaggedSymbol])
          )
        end
        attr_reader :supported_audio_formats

        sig do
          params(
            supported_audio_formats:
              T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol]
          ).void
        end
        attr_writer :supported_audio_formats

        sig { returns(T.nilable(Integer)) }
        attr_reader :voices_count

        sig { params(voices_count: Integer).void }
        attr_writer :voices_count

        sig { returns(T.nilable(String)) }
        attr_reader :websocket_url

        sig { params(websocket_url: String).void }
        attr_writer :websocket_url

        # What a caller needs to choose an engine. It carries no publisher contact
        # details, review notes or credential references.
        sig do
          params(
            id: String,
            name: String,
            status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
            visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
            capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
            connect_timeout_ms: Integer,
            created_at: Time,
            data_retention_policy_url: T.nilable(String),
            documentation_url: T.nilable(String),
            supported_audio_formats:
              T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
            voices_count: Integer,
            websocket_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          name:,
          # Whether the engine can serve traffic right now, independent of `visibility` and
          # `review_status`. `draft`: not yet approved (new and awaiting its first review,
          # rejected and awaiting a fix, or approved earlier and awaiting re-review after a
          # review-sensitive change). `active`: serving traffic. `disabled`: owner-paused,
          # reversible via `enable`. `suspended`: paused by Telnyx (repeated failures of a
          # public engine, or an abuse action); the owner cannot clear this by calling
          # `enable`, and Telnyx can reinstate it.
          status:,
          # `private`: only your organization can use the engine. `public`: any organization
          # can, once it is `active`.
          visibility:,
          # What the engine supports. An unknown key is rejected.
          capabilities: nil,
          connect_timeout_ms: nil,
          created_at: nil,
          data_retention_policy_url: nil,
          documentation_url: nil,
          supported_audio_formats: nil,
          voices_count: nil,
          websocket_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              status: Telnyx::CommunityTtsEngineStatus::TaggedSymbol,
              visibility: Telnyx::CommunityTtsEngineVisibility::TaggedSymbol,
              capabilities: Telnyx::CommunityTtsEngineCapabilities,
              connect_timeout_ms: Integer,
              created_at: Time,
              data_retention_policy_url: T.nilable(String),
              documentation_url: T.nilable(String),
              supported_audio_formats:
                T::Array[Telnyx::CommunityTtsAudioFormat::TaggedSymbol],
              voices_count: Integer,
              websocket_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
