# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Calls#create
      class CallCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute call_sid
        #   The call control ID of the created call.
        #
        #   @return [String]
        required :call_sid, String

        # @!attribute from
        #   The caller address.
        #
        #   @return [String]
        required :from, String

        # @!attribute status
        #   The initial status of the outbound call.
        #
        #   @return [Symbol, Telnyx::Models::Texml::CallCreateResponse::Status]
        required :status, enum: -> { Telnyx::Models::Texml::CallCreateResponse::Status }

        # @!attribute to
        #   The called address.
        #
        #   @return [String]
        required :to, String

        # @!method initialize(call_sid:, from:, status:, to:)
        #   @param call_sid [String] The call control ID of the created call.
        #
        #   @param from [String] The caller address.
        #
        #   @param status [Symbol, Telnyx::Models::Texml::CallCreateResponse::Status] The initial status of the outbound call.
        #
        #   @param to [String] The called address.

        # The initial status of the outbound call.
        #
        # @see Telnyx::Models::Texml::CallCreateResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          QUEUED = :queued

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
