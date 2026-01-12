# typed: strong

module Telnyx
  module Resources
    class Texml
      class Accounts
        sig { returns(Telnyx::Resources::Texml::Accounts::Calls) }
        attr_reader :calls

        sig { returns(Telnyx::Resources::Texml::Accounts::Conferences) }
        attr_reader :conferences

        sig { returns(Telnyx::Resources::Texml::Accounts::Recordings) }
        attr_reader :recordings

        sig { returns(Telnyx::Resources::Texml::Accounts::Transcriptions) }
        attr_reader :transcriptions

        sig { returns(Telnyx::Resources::Texml::Accounts::Queues) }
        attr_reader :queues

        # Returns multiple recording resources for an account.
        sig do
          params(
            account_sid: String,
            date_created: Time,
            page: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Texml::AccountRetrieveRecordingsJsonResponse
          )
        end
        def retrieve_recordings_json(
          # The id of the account the resource belongs to.
          account_sid,
          # Filters recording by the creation date. Expected format is ISO8601 date or
          # date-time, ie. {YYYY}-{MM}-{DD} or {YYYY}-{MM}-{DD}T{hh}:{mm}:{ss}Z. Also
          # accepts inequality operators, e.g. DateCreated>=2023-05-22.
          date_created: nil,
          # The number of the page to be displayed, zero-indexed, should be used in
          # conjuction with PageToken.
          page: nil,
          # The number of records to be displayed on a page
          page_size: nil,
          request_options: {}
        )
        end

        # Returns multiple recording transcription resources for an account.
        sig do
          params(
            account_sid: String,
            page_size: Integer,
            page_token: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::Texml::AccountRetrieveTranscriptionsJsonResponse
          )
        end
        def retrieve_transcriptions_json(
          # The id of the account the resource belongs to.
          account_sid,
          # The number of records to be displayed on a page
          page_size: nil,
          # Used to request the next page of results.
          page_token: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
