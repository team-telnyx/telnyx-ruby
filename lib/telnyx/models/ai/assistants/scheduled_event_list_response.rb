# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::ScheduledEvents#list
        class ScheduledEventListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse>]
          required :data,
                   -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Data] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
          required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

          # @!method initialize(data:, meta:)
          #   @param data [Array<Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse>]
          #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]

          module Data
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse }

            variant -> { Telnyx::AI::Assistants::ScheduledSMSEventResponse }

            # @!method self.variants
            #   @return [Array(Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse)]
          end
        end
      end
    end
  end
end
