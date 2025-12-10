# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module ScheduledEventListResponse
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
              T::Array[
                Telnyx::Models::AI::Assistants::ScheduledEventListResponse::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
