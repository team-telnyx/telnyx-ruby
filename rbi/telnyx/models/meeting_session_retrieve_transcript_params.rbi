# typed: strong

module Telnyx
  module Models
    class MeetingSessionRetrieveTranscriptParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MeetingSessionRetrieveTranscriptParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Return results with a cursor position after this value.
      sig { returns(T.nilable(Integer)) }
      attr_reader :after

      sig { params(after: Integer).void }
      attr_writer :after

      # Maximum number of results to return per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Long-poll duration in seconds. The server holds the connection open for up to
      # this many seconds, waiting for new or updated results before returning an empty
      # response. Set to 0 for an immediate response.
      sig { returns(T.nilable(Integer)) }
      attr_reader :wait_seconds

      sig { params(wait_seconds: Integer).void }
      attr_writer :wait_seconds

      sig do
        params(
          id: String,
          after: Integer,
          limit: Integer,
          wait_seconds: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Return results with a cursor position after this value.
        after: nil,
        # Maximum number of results to return per page.
        limit: nil,
        # Long-poll duration in seconds. The server holds the connection open for up to
        # this many seconds, waiting for new or updated results before returning an empty
        # response. Set to 0 for an immediate response.
        wait_seconds: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            after: Integer,
            limit: Integer,
            wait_seconds: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
