# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#streams_json
        class CallStreamsJsonResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute account_sid
          #
          #   @return [String, nil]
          optional :account_sid, String

          # @!attribute call_sid
          #
          #   @return [String, nil]
          optional :call_sid, String

          # @!attribute date_updated
          #
          #   @return [Time, nil]
          optional :date_updated, Time

          # @!attribute name
          #   The user specified name of Stream.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute sid
          #   Identifier of a resource.
          #
          #   @return [String, nil]
          optional :sid, String

          # @!attribute status
          #   The status of the streaming.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status }

          # @!attribute uri
          #   The relative URI for this streaming resource.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(account_sid: nil, call_sid: nil, date_updated: nil, name: nil, sid: nil, status: nil, uri: nil)
          #   @param account_sid [String]
          #
          #   @param call_sid [String]
          #
          #   @param date_updated [Time]
          #
          #   @param name [String] The user specified name of Stream.
          #
          #   @param sid [String] Identifier of a resource.
          #
          #   @param status [Symbol, Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status] The status of the streaming.
          #
          #   @param uri [String] The relative URI for this streaming resource.

          # The status of the streaming.
          #
          # @see Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse#status
          module Status
            extend Telnyx::Internal::Type::Enum

            IN_PROGRESS = :"in-progress"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
