# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          class V1RetrievePersonalitiesResponseItem < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [Integer]
            required :id, Integer

            # @!attribute end_call_enabled
            #
            #   @return [Boolean]
            required :end_call_enabled, Telnyx::Internal::Type::Boolean

            # @!attribute language
            #   ISO language code the simulated caller speaks.
            #
            #   @return [String]
            required :language, String

            # @!attribute name
            #   Display name of the personality.
            #
            #   @return [String]
            required :name, String

            # @!attribute prompt
            #   Instructions the simulated caller follows.
            #
            #   @return [String]
            required :prompt, String

            # @!attribute accent
            #
            #   @return [String, nil]
            optional :accent, String

            # @!attribute background_noise
            #
            #   @return [String, nil]
            optional :background_noise, String, nil?: true

            # @!attribute background_sound_volume
            #
            #   @return [Float, nil]
            optional :background_sound_volume, Float, nil?: true

            # @!attribute effective_voice_volume
            #
            #   @return [Float, nil]
            optional :effective_voice_volume, Float, nil?: true

            # @!attribute forked_from
            #   ID of the personality this one was forked from.
            #
            #   @return [Integer, nil]
            optional :forked_from, Integer, nil?: true

            # @!attribute generation_config
            #
            #   @return [Object, nil]
            optional :generation_config, Telnyx::Internal::Type::Unknown, nil?: true

            # @!attribute interruption_level
            #   How aggressively the personality interrupts the assistant.
            #
            #   @return [String, nil]
            optional :interruption_level, String, nil?: true

            # @!attribute message_plan
            #   Idle-timeout plan for messages during a call.
            #
            #   @return [Object, nil]
            optional :message_plan, Telnyx::Internal::Type::Unknown, nil?: true

            # @!attribute network_simulation
            #
            #   @return [Object, nil]
            optional :network_simulation, Telnyx::Internal::Type::Unknown, nil?: true

            # @!attribute organization
            #
            #   @return [Integer, nil]
            optional :organization, Integer, nil?: true

            # @!attribute project
            #
            #   @return [Integer, nil]
            optional :project, Integer, nil?: true

            # @!attribute speed
            #
            #   @return [Float, String, nil]
            optional :speed,
                     union: -> { Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::Speed },
                     nil?: true

            # @!attribute start_speaking_plan
            #
            #   @return [Float, Object, nil]
            optional :start_speaking_plan,
                     union: -> { Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem::StartSpeakingPlan },
                     nil?: true

            # @!attribute stop_speaking_plan
            #
            #   @return [Object, nil]
            optional :stop_speaking_plan, Telnyx::Internal::Type::Unknown, nil?: true

            # @!attribute voice_volume
            #
            #   @return [Float, nil]
            optional :voice_volume, Float, nil?: true

            # @!method initialize(id:, end_call_enabled:, language:, name:, prompt:, accent: nil, background_noise: nil, background_sound_volume: nil, effective_voice_volume: nil, forked_from: nil, generation_config: nil, interruption_level: nil, message_plan: nil, network_simulation: nil, organization: nil, project: nil, speed: nil, start_speaking_plan: nil, stop_speaking_plan: nil, voice_volume: nil)
            #   @param id [Integer]
            #
            #   @param end_call_enabled [Boolean]
            #
            #   @param language [String] ISO language code the simulated caller speaks.
            #
            #   @param name [String] Display name of the personality.
            #
            #   @param prompt [String] Instructions the simulated caller follows.
            #
            #   @param accent [String]
            #
            #   @param background_noise [String, nil]
            #
            #   @param background_sound_volume [Float, nil]
            #
            #   @param effective_voice_volume [Float, nil]
            #
            #   @param forked_from [Integer, nil] ID of the personality this one was forked from.
            #
            #   @param generation_config [Object, nil]
            #
            #   @param interruption_level [String, nil] How aggressively the personality interrupts the assistant.
            #
            #   @param message_plan [Object, nil] Idle-timeout plan for messages during a call.
            #
            #   @param network_simulation [Object, nil]
            #
            #   @param organization [Integer, nil]
            #
            #   @param project [Integer, nil]
            #
            #   @param speed [Float, String, nil]
            #
            #   @param start_speaking_plan [Float, Object, nil]
            #
            #   @param stop_speaking_plan [Object, nil]
            #
            #   @param voice_volume [Float, nil]

            # @see Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem#speed
            module Speed
              extend Telnyx::Internal::Type::Union

              variant Float

              variant String

              # @!method self.variants
              #   @return [Array(Float, String)]
            end

            # @see Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem#start_speaking_plan
            module StartSpeakingPlan
              extend Telnyx::Internal::Type::Union

              variant Float

              variant Telnyx::Internal::Type::Unknown

              # @!method self.variants
              #   @return [Array(Float, Object)]
            end
          end

          # @type [Telnyx::Internal::Type::Converter]
          V1RetrievePersonalitiesResponse =
            Telnyx::Internal::Type::ArrayOf[-> { Telnyx::Models::AI::Tests::TestFramework::V1RetrievePersonalitiesResponseItem }]
        end
      end
    end
  end
end
