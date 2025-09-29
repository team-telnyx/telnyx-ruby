# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        # Union type for different scheduled event response types
        module ScheduledEventResponse
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse,
                Telnyx::AI::Assistants::ScheduledSMSEventResponse
              )
            end

          sig do
            override.returns(
              T::Array[Telnyx::AI::Assistants::ScheduledEventResponse::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
