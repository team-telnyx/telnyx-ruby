# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          class V1RetrievePersonalitiesResponseItem < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Integer) }
            attr_accessor :id

            sig { returns(T::Boolean) }
            attr_accessor :end_call_enabled

            # ISO language code the simulated caller speaks.
            sig { returns(String) }
            attr_accessor :language

            # Display name of the personality.
            sig { returns(String) }
            attr_accessor :name

            # Instructions the simulated caller follows.
            sig { returns(String) }
            attr_accessor :prompt

            sig { returns(T.nilable(String)) }
            attr_reader :accent

            sig { params(accent: String).void }
            attr_writer :accent

            sig { returns(T.nilable(String)) }
            attr_accessor :background_noise

            sig { returns(T.nilable(Float)) }
            attr_accessor :background_sound_volume

            sig { returns(T.nilable(Float)) }
            attr_accessor :effective_voice_volume

            # ID of the personality this one was forked from.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :forked_from

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :generation_config

            # How aggressively the personality interrupts the assistant.
            sig { returns(T.nilable(String)) }
            attr_accessor :interruption_level

            # Idle-timeout plan for messages during a call.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :message_plan

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :network_simulation

            sig { returns(T.nilable(Integer)) }
            attr_accessor :organization

            sig { returns(T.nilable(Integer)) }
            attr_accessor :project

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::Speed::Variants
                )
              )
            end
            attr_accessor :speed

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::StartSpeakingPlan::Variants
                )
              )
            end
            attr_accessor :start_speaking_plan

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_accessor :stop_speaking_plan

            sig { returns(T.nilable(Float)) }
            attr_accessor :voice_volume

            sig do
              params(
                id: Integer,
                end_call_enabled: T::Boolean,
                language: String,
                name: String,
                prompt: String,
                accent: String,
                background_noise: T.nilable(String),
                background_sound_volume: T.nilable(Float),
                effective_voice_volume: T.nilable(Float),
                forked_from: T.nilable(Integer),
                generation_config: T.nilable(T::Hash[Symbol, T.anything]),
                interruption_level: T.nilable(String),
                message_plan: T.nilable(T::Hash[Symbol, T.anything]),
                network_simulation: T.nilable(T::Hash[Symbol, T.anything]),
                organization: T.nilable(Integer),
                project: T.nilable(Integer),
                speed:
                  T.nilable(
                    Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::Speed::Variants
                  ),
                start_speaking_plan:
                  T.nilable(
                    Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::StartSpeakingPlan::Variants
                  ),
                stop_speaking_plan: T.nilable(T::Hash[Symbol, T.anything]),
                voice_volume: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              end_call_enabled:,
              # ISO language code the simulated caller speaks.
              language:,
              # Display name of the personality.
              name:,
              # Instructions the simulated caller follows.
              prompt:,
              accent: nil,
              background_noise: nil,
              background_sound_volume: nil,
              effective_voice_volume: nil,
              # ID of the personality this one was forked from.
              forked_from: nil,
              generation_config: nil,
              # How aggressively the personality interrupts the assistant.
              interruption_level: nil,
              # Idle-timeout plan for messages during a call.
              message_plan: nil,
              network_simulation: nil,
              organization: nil,
              project: nil,
              speed: nil,
              start_speaking_plan: nil,
              stop_speaking_plan: nil,
              voice_volume: nil
            )
            end

            sig do
              override.returns(
                {
                  id: Integer,
                  end_call_enabled: T::Boolean,
                  language: String,
                  name: String,
                  prompt: String,
                  accent: String,
                  background_noise: T.nilable(String),
                  background_sound_volume: T.nilable(Float),
                  effective_voice_volume: T.nilable(Float),
                  forked_from: T.nilable(Integer),
                  generation_config: T.nilable(T::Hash[Symbol, T.anything]),
                  interruption_level: T.nilable(String),
                  message_plan: T.nilable(T::Hash[Symbol, T.anything]),
                  network_simulation: T.nilable(T::Hash[Symbol, T.anything]),
                  organization: T.nilable(Integer),
                  project: T.nilable(Integer),
                  speed:
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::Speed::Variants
                    ),
                  start_speaking_plan:
                    T.nilable(
                      Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::StartSpeakingPlan::Variants
                    ),
                  stop_speaking_plan: T.nilable(T::Hash[Symbol, T.anything]),
                  voice_volume: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            module Speed
              extend Telnyx::Internal::Type::Union

              Variants = T.type_alias { T.any(Float, String) }

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::Speed::Variants
                  ]
                )
              end
              def self.variants
              end
            end

            module StartSpeakingPlan
              extend Telnyx::Internal::Type::Union

              Variants =
                T.type_alias { T.any(Float, T::Hash[Symbol, T.anything]) }

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::StartSpeakingPlan::Variants
                  ]
                )
              end
              def self.variants
              end

              UnionMember1Map =
                T.let(
                  Telnyx::Internal::Type::HashOf[
                    Telnyx::Internal::Type::Unknown
                  ],
                  Telnyx::Internal::Type::Converter
                )
            end
          end

          V1RetrievePersonalitiesResponse =
            T.let(
              Telnyx::Internal::Type::ArrayOf[
                Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem
              ],
              Telnyx::Internal::Type::Converter
            )
        end
      end
    end
  end
end
