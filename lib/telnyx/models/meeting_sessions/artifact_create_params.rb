# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Artifacts#create
      class ArtifactCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute body
        #   One of two shapes: a named type on its own, or `custom` with the prompt it
        #   answers.
        #
        #   @return [Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact]
        required :body, union: -> { Telnyx::MeetingSessions::ArtifactCreateParams::Body }

        # @!method initialize(id:, body:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessions::ArtifactCreateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param body [Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact] One of two shapes: a named type on its own, or `custom` with the prompt it answe
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # One of two shapes: a named type on its own, or `custom` with the prompt it
        # answers.
        module Body
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact }

          variant -> { Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact }

          class NamedArtifact < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #   What to generate from the transcript. `custom` is answered from a `prompt` you
            #   supply; the five named types need none.
            #
            #   @return [Symbol, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type]
            required :type, enum: -> { Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type }

            # @!method initialize(type:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact} for
            #   more details.
            #
            #   @param type [Symbol, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type] What to generate from the transcript. `custom` is answered from a `prompt` you s

            # What to generate from the transcript. `custom` is answered from a `prompt` you
            # supply; the five named types need none.
            #
            # @see Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact#type
            module Type
              extend Telnyx::Internal::Type::Enum

              SUMMARY = :summary
              ACTION_ITEMS = :action_items
              DECISIONS = :decisions
              TOPICS = :topics
              OPEN_QUESTIONS = :open_questions

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class CustomArtifact < Telnyx::Internal::Type::BaseModel
            # @!attribute prompt
            #   An open-ended request answered from the transcript. Required when `type` is
            #   `custom`, and rejected with 400 on any named type. Trimmed before storage and
            #   echoed back in artifact responses and the `artifact.completed` webhook.
            #
            #   @return [String]
            required :prompt, String

            # @!attribute type
            #   Answered from the `prompt` below rather than a fixed question.
            #
            #   @return [Symbol, :custom]
            required :type, const: :custom

            # @!method initialize(prompt:, type: :custom)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact}
            #   for more details.
            #
            #   @param prompt [String] An open-ended request answered from the transcript. Required when `type` is `cus
            #
            #   @param type [Symbol, :custom] Answered from the `prompt` below rather than a fixed question.
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact, Telnyx::Models::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact)]
        end
      end
    end
  end
end
