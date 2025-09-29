# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#retrieve_participants
          class ParticipantRetrieveParticipantsParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!method initialize(account_sid:, request_options: {})
            #   @param account_sid [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
