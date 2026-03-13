# frozen_string_literal: true

module Telnyx
  module Models
    module Recordings
      # @see Telnyx::Resources::Recordings::Actions#delete
      class ActionDeleteResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Recordings::ActionDeleteResponse::Status, nil]
        optional :status, enum: -> { Telnyx::Models::Recordings::ActionDeleteResponse::Status }

        # @!method initialize(status: nil)
        #   @param status [Symbol, Telnyx::Models::Recordings::ActionDeleteResponse::Status]

        # @see Telnyx::Models::Recordings::ActionDeleteResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          OK = :ok

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
