# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#delete
      class DedicatedIPDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute query_drain
        #   Set together with `force=true` to release the last IP in a pool. Acknowledges
        #   that mail routed to the emptied pool is held until the pool has a sendable IP
        #   again. Also accepted in the JSON body.
        #
        #   @return [Boolean, nil]
        optional :query_drain, Telnyx::Internal::Type::Boolean

        # @!attribute query_force
        #   Set together with `drain=true` to release the last IP in a pool. Either flag
        #   alone has no effect. Also accepted in the JSON body.
        #
        #   @return [Boolean, nil]
        optional :query_force, Telnyx::Internal::Type::Boolean

        # @!attribute query_reason
        #   Free-text reason recorded with the release. Also accepted in the JSON body.
        #
        #   @return [String, nil]
        optional :query_reason, String

        # @!attribute body_drain
        #   Set together with `force: true` to release the last IP in a pool. Acknowledges
        #   that mail routed to the emptied pool is held until the pool has a sendable IP
        #   again.
        #
        #   @return [Boolean, nil]
        optional :body_drain, Telnyx::Internal::Type::Boolean, api_name: :drain

        # @!attribute body_force
        #   Set together with `drain: true` to release the last IP in a pool. Either flag
        #   alone has no effect.
        #
        #   @return [Boolean, nil]
        optional :body_force, Telnyx::Internal::Type::Boolean, api_name: :force

        # @!attribute body_reason
        #   Free-text reason recorded with the release.
        #
        #   @return [String, nil]
        optional :body_reason, String, api_name: :reason

        # @!method initialize(id:, query_drain: nil, query_force: nil, query_reason: nil, body_drain: nil, body_force: nil, body_reason: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::DedicatedIPDeleteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param query_drain [Boolean] Set together with `force=true` to release the last IP in a pool. Acknowledges th
        #
        #   @param query_force [Boolean] Set together with `drain=true` to release the last IP in a pool. Either flag alo
        #
        #   @param query_reason [String] Free-text reason recorded with the release. Also accepted in the JSON body.
        #
        #   @param body_drain [Boolean] Set together with `force: true` to release the last IP in a pool. Acknowledges t
        #
        #   @param body_force [Boolean] Set together with `drain: true` to release the last IP in a pool. Either flag al
        #
        #   @param body_reason [String] Free-text reason recorded with the release.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
