# typed: strong

module Telnyx
  module Models
    module TtsIntegrations
      class CommunityTtsConformanceRun < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Each check is `ok`, `failed` or `skipped`: `voices_url_reachable`,
        # `voices_schema_valid`, `handshake`, `auth`, `init_accepted`, `audio_received`,
        # `final_frame_received`, `clean_close`.
        sig do
          returns(
            T::Hash[
              Symbol,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
            ]
          )
        end
        attr_accessor :checks

        # `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
        sig do
          returns(
            Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::TaggedSymbol
          )
        end
        attr_accessor :kind

        # `true` when every check is `ok`.
        sig { returns(T::Boolean) }
        attr_accessor :success

        # The first failure, in words.
        sig { returns(T.nilable(String)) }
        attr_accessor :error

        # How long the whole run took.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :latency_ms

        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        sig { returns(T.nilable(Integer)) }
        attr_accessor :time_to_first_audio_ms

        sig { returns(T.nilable(String)) }
        attr_accessor :voice_id

        # One recorded run of `test_connection`.
        sig do
          params(
            id: String,
            checks:
              T::Hash[
                Symbol,
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::OrSymbol
              ],
            kind:
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::OrSymbol,
            success: T::Boolean,
            error: T.nilable(String),
            latency_ms: T.nilable(Integer),
            started_at: Time,
            time_to_first_audio_ms: T.nilable(Integer),
            voice_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Each check is `ok`, `failed` or `skipped`: `voices_url_reachable`,
          # `voices_schema_valid`, `handshake`, `auth`, `init_accepted`, `audio_received`,
          # `final_frame_received`, `clean_close`.
          checks:,
          # `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
          kind:,
          # `true` when every check is `ok`.
          success:,
          # The first failure, in words.
          error: nil,
          # How long the whole run took.
          latency_ms: nil,
          started_at: nil,
          time_to_first_audio_ms: nil,
          voice_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checks:
                T::Hash[
                  Symbol,
                  Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
                ],
              kind:
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::TaggedSymbol,
              success: T::Boolean,
              error: T.nilable(String),
              latency_ms: T.nilable(Integer),
              started_at: Time,
              time_to_first_audio_ms: T.nilable(Integer),
              voice_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Check
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OK =
            T.let(
              :ok,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
            )
          SKIPPED =
            T.let(
              :skipped,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Check::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `test_connection`: run by the owner. `conformance`: run by Telnyx during review.
        module Kind
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEST_CONNECTION =
            T.let(
              :test_connection,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::TaggedSymbol
            )
          CONFORMANCE =
            T.let(
              :conformance,
              Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::TtsIntegrations::CommunityTtsConformanceRun::Kind::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
