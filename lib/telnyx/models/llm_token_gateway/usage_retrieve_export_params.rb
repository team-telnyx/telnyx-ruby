# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      # @see Telnyx::Resources::LlmTokenGateway::Usage#retrieve_export
      class UsageRetrieveExportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute cursor
        #   Opaque next_cursor from a previous page; not combinable with start_time. Bound
        #   to the requested types; the account always comes from the credential.
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute start_time
        #   First page only: RFC 3339 with offset, at most 30 days ago and not in the
        #   future; default now - 24h.
        #
        #   @return [Time, nil]
        optional :start_time, Time

        # @!attribute types
        #   Comma-separated subset of inference.request,guardrail.evaluation; default both.
        #
        #   @return [String, nil]
        optional :types, String

        # @!method initialize(cursor: nil, limit: nil, start_time: nil, types: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::LlmTokenGateway::UsageRetrieveExportParams} for more details.
        #
        #   @param cursor [String] Opaque next_cursor from a previous page; not combinable with start_time. Bound t
        #
        #   @param limit [Integer]
        #
        #   @param start_time [Time] First page only: RFC 3339 with offset, at most 30 days ago and not in the future
        #
        #   @param types [String] Comma-separated subset of inference.request,guardrail.evaluation; default both.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
