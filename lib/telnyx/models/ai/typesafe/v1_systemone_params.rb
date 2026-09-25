# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Typesafe
        # @see Telnyx::Resources::AI::Typesafe::V1#systemone
        class V1SystemoneParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute questions
          #   Between 1 and 64 named questions. Each key identifies the corresponding answer.
          #
          #   @return [Hash{Symbol=>Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score}]
          required :questions,
                   -> { Telnyx::Internal::Type::HashOf[union: Telnyx::AI::Typesafe::V1SystemoneParams::Question] }

          # @!attribute state
          #   Shared context evaluated by every question.
          #
          #   @return [String, Hash{Symbol=>Object}, Array<Object>]
          required :state, union: -> { Telnyx::AI::Typesafe::V1SystemoneParams::State }

          # @!attribute model
          #   Public model alias. telnyx/decision-flash offers the lowest cost and latency;
          #   telnyx/decision-pro supports decisions that require long context, including
          #   inputs beyond Jev’s 32k per-decision limit. Applies to every question in the
          #   request. Other values are rejected.
          #
          #   @return [Symbol, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Model, nil]
          optional :model, enum: -> { Telnyx::AI::Typesafe::V1SystemoneParams::Model }

          # @!method initialize(questions:, state:, model: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Typesafe::V1SystemoneParams} for more details.
          #
          #   @param questions [Hash{Symbol=>Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score}] Between 1 and 64 named questions. Each key identifies the corresponding answer.
          #
          #   @param state [String, Hash{Symbol=>Object}, Array<Object>] Shared context evaluated by every question.
          #
          #   @param model [Symbol, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Model] Public model alias. telnyx/decision-flash offers the lowest cost and latency; te
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          # A choice, yes/no, or ordered-score question.
          module Question
            extend Telnyx::Internal::Type::Union

            discriminator :type

            # Select one of the supplied options.
            variant :choice, -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice }

            # Evaluate a yes/no question. Omit criteria to use Yes and No descriptions.
            variant :noul, -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul }

            # Rate the state against an ordered rubric.
            variant :score, -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score }

            class Choice < Telnyx::Internal::Type::BaseModel
              # @!attribute criteria
              #   Between 2 and 64 option keys mapped to description strings or null. A null
              #   description uses the option key as its text.
              #
              #   @return [Hash{Symbol=>String, nil}]
              required :criteria, Telnyx::Internal::Type::HashOf[String, nil?: true]

              # @!attribute instructions
              #   Required instructions describing what to decide about the shared state.
              #
              #   @return [String, Hash{Symbol=>Object}, Array<Object>]
              required :instructions,
                       union: -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions }

              # @!attribute type
              #   Question type.
              #
              #   @return [Symbol, :choice]
              required :type, const: :choice

              # @!method initialize(criteria:, instructions:, type: :choice)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice} for more
              #   details.
              #
              #   Select one of the supplied options.
              #
              #   @param criteria [Hash{Symbol=>String, nil}] Between 2 and 64 option keys mapped to description strings or null. A null descr
              #
              #   @param instructions [String, Hash{Symbol=>Object}, Array<Object>] Required instructions describing what to decide about the shared state.
              #
              #   @param type [Symbol, :choice] Question type.

              # Required instructions describing what to decide about the shared state.
              #
              # @see Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice#instructions
              module Instructions
                extend Telnyx::Internal::Type::Union

                variant String

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::UnionMember1Map }

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice::Instructions::UnionMember2Array }

                # @!method self.variants
                #   @return [Array(String, Hash{Symbol=>Object}, Array<Object>)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember1Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember2Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end
            end

            class Noul < Telnyx::Internal::Type::BaseModel
              # @!attribute instructions
              #   Required instructions describing what to decide about the shared state.
              #
              #   @return [String, Hash{Symbol=>Object}, Array<Object>]
              required :instructions,
                       union: -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions }

              # @!attribute type
              #   Question type.
              #
              #   @return [Symbol, :noul]
              required :type, const: :noul

              # @!attribute criteria
              #   Optional descriptions for the positive and negative outcomes. Descriptions must
              #   be strings.
              #
              #   @return [Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria, nil]
              optional :criteria, -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria }

              # @!method initialize(instructions:, criteria: nil, type: :noul)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul} for more
              #   details.
              #
              #   Evaluate a yes/no question. Omit criteria to use Yes and No descriptions.
              #
              #   @param instructions [String, Hash{Symbol=>Object}, Array<Object>] Required instructions describing what to decide about the shared state.
              #
              #   @param criteria [Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul::Criteria] Optional descriptions for the positive and negative outcomes. Descriptions must
              #
              #   @param type [Symbol, :noul] Question type.

              # Required instructions describing what to decide about the shared state.
              #
              # @see Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul#instructions
              module Instructions
                extend Telnyx::Internal::Type::Union

                variant String

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::UnionMember1Map }

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul::Instructions::UnionMember2Array }

                # @!method self.variants
                #   @return [Array(String, Hash{Symbol=>Object}, Array<Object>)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember1Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember2Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end

              # @see Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul#criteria
              class Criteria < Telnyx::Internal::Type::BaseModel
                # @!attribute false_
                #   Description of the negative outcome.
                #
                #   @return [String, nil]
                optional :false_, String, api_name: :false

                # @!attribute true_
                #   Description of the positive outcome.
                #
                #   @return [String, nil]
                optional :true_, String, api_name: :true

                # @!method initialize(false_: nil, true_: nil)
                #   Optional descriptions for the positive and negative outcomes. Descriptions must
                #   be strings.
                #
                #   @param false_ [String] Description of the negative outcome.
                #
                #   @param true_ [String] Description of the positive outcome.
              end
            end

            class Score < Telnyx::Internal::Type::BaseModel
              # @!attribute criteria
              #   Between 2 and 64 description strings in ascending score order. Indices start at
              #   zero.
              #
              #   @return [Array<String>]
              required :criteria, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute instructions
              #   Required instructions describing what to decide about the shared state.
              #
              #   @return [String, Hash{Symbol=>Object}, Array<Object>]
              required :instructions,
                       union: -> { Telnyx::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions }

              # @!attribute type
              #   Question type.
              #
              #   @return [Symbol, :score]
              required :type, const: :score

              # @!method initialize(criteria:, instructions:, type: :score)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score} for more
              #   details.
              #
              #   Rate the state against an ordered rubric.
              #
              #   @param criteria [Array<String>] Between 2 and 64 description strings in ascending score order. Indices start at
              #
              #   @param instructions [String, Hash{Symbol=>Object}, Array<Object>] Required instructions describing what to decide about the shared state.
              #
              #   @param type [Symbol, :score] Question type.

              # Required instructions describing what to decide about the shared state.
              #
              # @see Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score#instructions
              module Instructions
                extend Telnyx::Internal::Type::Union

                variant String

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::UnionMember1Map }

                variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score::Instructions::UnionMember2Array }

                # @!method self.variants
                #   @return [Array(String, Hash{Symbol=>Object}, Array<Object>)]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember1Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

                # @type [Telnyx::Internal::Type::Converter]
                UnionMember2Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
              end
            end

            # @!method self.variants
            #   @return [Array(Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Choice, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Noul, Telnyx::Models::AI::Typesafe::V1SystemoneParams::Question::Score)]
          end

          # Shared context evaluated by every question.
          module State
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::State::UnionMember1Map }

            variant -> { Telnyx::Models::AI::Typesafe::V1SystemoneParams::State::UnionMember2Array }

            # @!method self.variants
            #   @return [Array(String, Hash{Symbol=>Object}, Array<Object>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember1Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember2Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
          end

          # Public model alias. telnyx/decision-flash offers the lowest cost and latency;
          # telnyx/decision-pro supports decisions that require long context, including
          # inputs beyond Jev’s 32k per-decision limit. Applies to every question in the
          # request. Other values are rejected.
          module Model
            extend Telnyx::Internal::Type::Enum

            TELNYX_DECISION_FLASH = :"telnyx/decision-flash"
            TELNYX_DECISION_PRO = :"telnyx/decision-pro"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
