# typed: strong

module Telnyx
  module Models
    class CommunityTtsEngine < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CommunityTtsEngine, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      # What the engine supports. An unknown key is rejected.
      sig { returns(Telnyx::CommunityTtsEngineCapabilities) }
      attr_reader :capabilities

      sig do
        params(
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash
        ).void
      end
      attr_writer :capabilities

      # The engine's unique name: the first part of its voices.
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

      sig { returns(T::Array[Telnyx::CommunityTtsAudioFormat::TaggedSymbol]) }
      attr_accessor :supported_audio_formats

      # `private`: only your organization can use the engine. `public`: any organization
      # can, once it is `active`.
      sig { returns(Telnyx::CommunityTtsEngineVisibility::TaggedSymbol) }
      attr_accessor :visibility

      sig { returns(String) }
      attr_accessor :voices_url

      sig { returns(String) }
      attr_accessor :websocket_url

      sig { returns(T.nilable(Integer)) }
      attr_reader :connect_timeout_ms

      sig { params(connect_timeout_ms: Integer).void }
      attr_writer :connect_timeout_ms

      sig { returns(T.nilable(String)) }
      attr_accessor :contact_email

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :data_retention_policy_url

      sig { returns(T.nilable(String)) }
      attr_accessor :documentation_url

      # The reviewer's notes on a rejection.
      sig { returns(T.nilable(String)) }
      attr_accessor :review_notes

      # `null`: never submitted, or an approved engine whose review-sensitive field
      # changed and awaits re-review. `pending`: submitted. `approved`: approved.
      # `rejected`: rejected, with `review_notes`.
      sig do
        returns(
          T.nilable(Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol)
        )
      end
      attr_accessor :review_status

      sig { returns(T.nilable(Time)) }
      attr_accessor :reviewed_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :voices_api_key_ref

      # The number of voices in the stored list.
      sig { returns(T.nilable(Integer)) }
      attr_reader :voices_count

      sig { params(voices_count: Integer).void }
      attr_writer :voices_count

      # `true` after three failed reads in a row, until a read succeeds. A degraded
      # engine keeps serving from its last list.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :voices_degraded

      sig { params(voices_degraded: T::Boolean).void }
      attr_writer :voices_degraded

      # When the stored list was last read successfully.
      sig { returns(T.nilable(Time)) }
      attr_accessor :voices_fetched_at

      # The full record of a community TTS engine you own. Select its voices by the
      # engine's `name`, as `<name>.<voice_id>`, with your own key for it
      # (`api_key_ref`).
      sig do
        params(
          id: String,
          capabilities: Telnyx::CommunityTtsEngineCapabilities::OrHash,
          name: String,
          status: Telnyx::CommunityTtsEngineStatus::OrSymbol,
          supported_audio_formats:
            T::Array[Telnyx::CommunityTtsAudioFormat::OrSymbol],
          visibility: Telnyx::CommunityTtsEngineVisibility::OrSymbol,
          voices_url: String,
          websocket_url: String,
          connect_timeout_ms: Integer,
          contact_email: T.nilable(String),
          created_at: Time,
          data_retention_policy_url: T.nilable(String),
          documentation_url: T.nilable(String),
          review_notes: T.nilable(String),
          review_status:
            T.nilable(Telnyx::CommunityTtsEngine::ReviewStatus::OrSymbol),
          reviewed_at: T.nilable(Time),
          updated_at: T.nilable(Time),
          voices_api_key_ref: T.nilable(String),
          voices_count: Integer,
          voices_degraded: T::Boolean,
          voices_fetched_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # What the engine supports. An unknown key is rejected.
        capabilities:,
        # The engine's unique name: the first part of its voices.
        name:,
        # Whether the engine can serve traffic right now, independent of `visibility` and
        # `review_status`. `draft`: not yet approved (new and awaiting its first review,
        # rejected and awaiting a fix, or approved earlier and awaiting re-review after a
        # review-sensitive change). `active`: serving traffic. `disabled`: owner-paused,
        # reversible via `enable`. `suspended`: paused by Telnyx (repeated failures of a
        # public engine, or an abuse action); the owner cannot clear this by calling
        # `enable`, and Telnyx can reinstate it.
        status:,
        supported_audio_formats:,
        # `private`: only your organization can use the engine. `public`: any organization
        # can, once it is `active`.
        visibility:,
        voices_url:,
        websocket_url:,
        connect_timeout_ms: nil,
        contact_email: nil,
        created_at: nil,
        data_retention_policy_url: nil,
        documentation_url: nil,
        # The reviewer's notes on a rejection.
        review_notes: nil,
        # `null`: never submitted, or an approved engine whose review-sensitive field
        # changed and awaits re-review. `pending`: submitted. `approved`: approved.
        # `rejected`: rejected, with `review_notes`.
        review_status: nil,
        reviewed_at: nil,
        updated_at: nil,
        voices_api_key_ref: nil,
        # The number of voices in the stored list.
        voices_count: nil,
        # `true` after three failed reads in a row, until a read succeeds. A degraded
        # engine keeps serving from its last list.
        voices_degraded: nil,
        # When the stored list was last read successfully.
        voices_fetched_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            capabilities: Telnyx::CommunityTtsEngineCapabilities,
            name: String,
            status: Telnyx::CommunityTtsEngineStatus::TaggedSymbol,
            supported_audio_formats:
              T::Array[Telnyx::CommunityTtsAudioFormat::TaggedSymbol],
            visibility: Telnyx::CommunityTtsEngineVisibility::TaggedSymbol,
            voices_url: String,
            websocket_url: String,
            connect_timeout_ms: Integer,
            contact_email: T.nilable(String),
            created_at: Time,
            data_retention_policy_url: T.nilable(String),
            documentation_url: T.nilable(String),
            review_notes: T.nilable(String),
            review_status:
              T.nilable(Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol),
            reviewed_at: T.nilable(Time),
            updated_at: T.nilable(Time),
            voices_api_key_ref: T.nilable(String),
            voices_count: Integer,
            voices_degraded: T::Boolean,
            voices_fetched_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # `null`: never submitted, or an approved engine whose review-sensitive field
      # changed and awaits re-review. `pending`: submitted. `approved`: approved.
      # `rejected`: rejected, with `review_notes`.
      module ReviewStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CommunityTtsEngine::ReviewStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol
          )
        APPROVED =
          T.let(
            :approved,
            Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol
          )
        REJECTED =
          T.let(
            :rejected,
            Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CommunityTtsEngine::ReviewStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
