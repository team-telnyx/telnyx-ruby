# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      module Accounts
        # @see Telnyx::Resources::Texml::Accounts::Calls#siprec_json
        class CallSiprecJsonResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute account_sid
          #   The id of the account the resource belongs to.
          #
          #   @return [String, nil]
          optional :account_sid, String

          # @!attribute call_sid
          #   The id of the call the resource belongs to.
          #
          #   @return [String, nil]
          optional :call_sid, String

          # @!attribute date_created
          #   The date and time the siprec session was created.
          #
          #   @return [String, nil]
          optional :date_created, String

          # @!attribute date_updated
          #   The date and time the siprec session was last updated.
          #
          #   @return [String, nil]
          optional :date_updated, String

          # @!attribute error_code
          #   The error code of the siprec session.
          #
          #   @return [String, nil]
          optional :error_code, String

          # @!attribute sid
          #   The SID of the siprec session.
          #
          #   @return [String, nil]
          optional :sid, String

          # @!attribute start_time
          #   The date and time the siprec session was started.
          #
          #   @return [String, nil]
          optional :start_time, String

          # @!attribute status
          #   The status of the siprec session.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Status }

          # @!attribute track
          #   The track used for the siprec session.
          #
          #   @return [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Track, nil]
          optional :track, enum: -> { Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Track }

          # @!attribute uri
          #   The URI of the siprec session.
          #
          #   @return [String, nil]
          optional :uri, String

          # @!method initialize(account_sid: nil, call_sid: nil, date_created: nil, date_updated: nil, error_code: nil, sid: nil, start_time: nil, status: nil, track: nil, uri: nil)
          #   @param account_sid [String] The id of the account the resource belongs to.
          #
          #   @param call_sid [String] The id of the call the resource belongs to.
          #
          #   @param date_created [String] The date and time the siprec session was created.
          #
          #   @param date_updated [String] The date and time the siprec session was last updated.
          #
          #   @param error_code [String] The error code of the siprec session.
          #
          #   @param sid [String] The SID of the siprec session.
          #
          #   @param start_time [String] The date and time the siprec session was started.
          #
          #   @param status [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Status] The status of the siprec session.
          #
          #   @param track [Symbol, Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse::Track] The track used for the siprec session.
          #
          #   @param uri [String] The URI of the siprec session.

          # The status of the siprec session.
          #
          # @see Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse#status
          module Status
            extend Telnyx::Internal::Type::Enum

            IN_PROGRESS = :"in-progress"
            STOPPED = :stopped

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The track used for the siprec session.
          #
          # @see Telnyx::Models::Texml::Accounts::CallSiprecJsonResponse#track
          module Track
            extend Telnyx::Internal::Type::Enum

            BOTH_TRACKS = :both_tracks
            INBOUND_TRACK = :inbound_track
            OUTBOUND_TRACK = :outbound_track

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
