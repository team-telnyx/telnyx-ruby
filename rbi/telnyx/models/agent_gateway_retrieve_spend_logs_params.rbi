# typed: strong

module Telnyx
  module Models
    class AgentGatewayRetrieveSpendLogsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AgentGatewayRetrieveSpendLogsParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :instance_id

      # The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
      sig { returns(T.nilable(Time)) }
      attr_reader :end_

      sig { params(end_: Time).void }
      attr_writer :end_

      # Only the requests made with this key.
      sig { returns(T.nilable(String)) }
      attr_reader :key_id

      sig { params(key_id: String).void }
      attr_writer :key_id

      # The page to return, counting from 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Results per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours
      # before `end`.
      sig { returns(T.nilable(Time)) }
      attr_reader :start

      sig { params(start: Time).void }
      attr_writer :start

      # Only the requests made with this team's keys.
      sig { returns(T.nilable(String)) }
      attr_reader :team_id

      sig { params(team_id: String).void }
      attr_writer :team_id

      sig do
        params(
          instance_id: String,
          end_: Time,
          key_id: String,
          page_number: Integer,
          page_size: Integer,
          start: Time,
          team_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        instance_id:,
        # The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
        end_: nil,
        # Only the requests made with this key.
        key_id: nil,
        # The page to return, counting from 1.
        page_number: nil,
        # Results per page.
        page_size: nil,
        # The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours
        # before `end`.
        start: nil,
        # Only the requests made with this team's keys.
        team_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            instance_id: String,
            end_: Time,
            key_id: String,
            page_number: Integer,
            page_size: Integer,
            start: Time,
            team_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
