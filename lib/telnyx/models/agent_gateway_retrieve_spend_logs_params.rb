# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#retrieve_spend_logs
    class AgentGatewayRetrieveSpendLogsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute instance_id
      #
      #   @return [String]
      required :instance_id, String

      # @!attribute end_
      #   The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
      #
      #   @return [Time, nil]
      optional :end_, Time

      # @!attribute key_id
      #   Only the requests made with this key.
      #
      #   @return [String, nil]
      optional :key_id, String

      # @!attribute page_number
      #   The page to return, counting from 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Results per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute start
      #   The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours
      #   before `end`.
      #
      #   @return [Time, nil]
      optional :start, Time

      # @!attribute team_id
      #   Only the requests made with this team's keys.
      #
      #   @return [String, nil]
      optional :team_id, String

      # @!method initialize(instance_id:, end_: nil, key_id: nil, page_number: nil, page_size: nil, start: nil, team_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AgentGatewayRetrieveSpendLogsParams} for more details.
      #
      #   @param instance_id [String]
      #
      #   @param end_ [Time] The window's end, an RFC 3339 timestamp with an offset. Defaults to now.
      #
      #   @param key_id [String] Only the requests made with this key.
      #
      #   @param page_number [Integer] The page to return, counting from 1.
      #
      #   @param page_size [Integer] Results per page.
      #
      #   @param start [Time] The window's start, an RFC 3339 timestamp with an offset. Defaults to 24 hours b
      #
      #   @param team_id [String] Only the requests made with this team's keys.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
