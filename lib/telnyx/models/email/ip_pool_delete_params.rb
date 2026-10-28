# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::IPPools#delete
      class IPPoolDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute drain
        #   Set together with `force=true` to delete a pool that still has IPs. Acknowledges
        #   deletion while the pool still has members; this flag does not reroute already
        #   queued messages.
        #
        #   @return [Boolean, nil]
        optional :drain, Telnyx::Internal::Type::Boolean

        # @!attribute force
        #   Set together with `drain=true` to delete a pool that still has IPs. Either flag
        #   alone has no effect.
        #
        #   @return [Boolean, nil]
        optional :force, Telnyx::Internal::Type::Boolean

        # @!method initialize(id:, drain: nil, force: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::IPPoolDeleteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param drain [Boolean] Set together with `force=true` to delete a pool that still has IPs. Acknowledges
        #
        #   @param force [Boolean] Set together with `drain=true` to delete a pool that still has IPs. Either flag
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
