# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      module IPPools
        # @see Telnyx::Resources::Email::IPPools::IPs#delete
        class IPDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute ip_id
          #
          #   @return [String]
          required :ip_id, String

          # @!attribute drain
          #   Set together with `force=true` to remove the last IP in the pool. Acknowledges
          #   that mail routed to the emptied pool is held until the pool has a sendable IP
          #   again.
          #
          #   @return [Boolean, nil]
          optional :drain, Telnyx::Internal::Type::Boolean

          # @!attribute force
          #   Set together with `drain=true` to remove the last IP in the pool. Either flag
          #   alone has no effect.
          #
          #   @return [Boolean, nil]
          optional :force, Telnyx::Internal::Type::Boolean

          # @!method initialize(id:, ip_id:, drain: nil, force: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::IPPools::IPDeleteParams} for more details.
          #
          #   @param id [String]
          #
          #   @param ip_id [String]
          #
          #   @param drain [Boolean] Set together with `force=true` to remove the last IP in the pool. Acknowledges t
          #
          #   @param force [Boolean] Set together with `drain=true` to remove the last IP in the pool. Either flag al
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
