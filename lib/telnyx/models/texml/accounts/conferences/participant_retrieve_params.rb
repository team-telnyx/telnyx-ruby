# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          # @see Telnyx::Resources::Texml::Accounts::Conferences::Participants#retrieve
          class ParticipantRetrieveParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            # @!attribute account_sid
            #
            #   @return [String]
            required :account_sid, String

            # @!attribute conference_sid
            #
            #   @return [String]
            required :conference_sid, String

            # @!attribute call_sid_or_participant_label
            #
            #   @return [String]
            required :call_sid_or_participant_label, String

            # @!method initialize(account_sid:, conference_sid:, call_sid_or_participant_label:, request_options: {})
            #   @param account_sid [String]
            #   @param conference_sid [String]
            #   @param call_sid_or_participant_label [String]
            #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
