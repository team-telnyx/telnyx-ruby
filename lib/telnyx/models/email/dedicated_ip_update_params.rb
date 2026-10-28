# frozen_string_literal: true

module Telnyx
  module Models
    module Email
      # @see Telnyx::Resources::Email::DedicatedIPs#update
      class DedicatedIPUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute drain
        #   Set together with `force: true` to move the last IP out of its current pool.
        #   Acknowledges that mail routed to the emptied pool is held. Used only with
        #   `pool_id`.
        #
        #   @return [Boolean, nil]
        optional :drain, Telnyx::Internal::Type::Boolean

        # @!attribute force
        #   Set together with `drain: true` to move the last IP out of its current pool.
        #   Used only with `pool_id`.
        #
        #   @return [Boolean, nil]
        optional :force, Telnyx::Internal::Type::Boolean

        # @!attribute pool_id
        #   Move the IP to this pool, replacing its current membership. Use the IP's current
        #   pool to change only its weight. To take an IP out of a pool, use
        #   `DELETE /email/ip_pools/{id}/ips/{ip_id}`.
        #
        #   @return [String, nil]
        optional :pool_id, String

        # @!attribute warmup
        #   Alias for `warmup_paused`.
        #
        #   @return [Telnyx::Models::Email::DedicatedIPUpdateParams::Warmup, nil]
        optional :warmup, -> { Telnyx::Email::DedicatedIPUpdateParams::Warmup }

        # @!attribute warmup_paused
        #   Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the
        #   `pause_warmup` and `resume_warmup` actions. A Boolean value takes precedence
        #   over `warmup.paused`. When a pause field is present and `pool_id` is absent,
        #   supplying neither pause field as a Boolean invokes resume.
        #
        #   @return [Boolean, nil]
        optional :warmup_paused, Telnyx::Internal::Type::Boolean

        # @!attribute weight
        #   Routing weight in the target pool. Used only with `pool_id`.
        #
        #   @return [Integer, nil]
        optional :weight, Integer

        # @!method initialize(id:, drain: nil, force: nil, pool_id: nil, warmup: nil, warmup_paused: nil, weight: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Email::DedicatedIPUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param drain [Boolean] Set together with `force: true` to move the last IP out of its current pool. Ack
        #
        #   @param force [Boolean] Set together with `drain: true` to move the last IP out of its current pool. Use
        #
        #   @param pool_id [String] Move the IP to this pool, replacing its current membership. Use the IP's current
        #
        #   @param warmup [Telnyx::Models::Email::DedicatedIPUpdateParams::Warmup] Alias for `warmup_paused`.
        #
        #   @param warmup_paused [Boolean] Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the `pause_wa
        #
        #   @param weight [Integer] Routing weight in the target pool. Used only with `pool_id`.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Warmup < Telnyx::Internal::Type::BaseModel
          # @!attribute paused
          #   Pause (`true`) or resume (`false`) the warm-up ramp. Used only when
          #   `warmup_paused` is not a Boolean.
          #
          #   @return [Boolean, nil]
          optional :paused, Telnyx::Internal::Type::Boolean

          # @!method initialize(paused: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Email::DedicatedIPUpdateParams::Warmup} for more details.
          #
          #   Alias for `warmup_paused`.
          #
          #   @param paused [Boolean] Pause (`true`) or resume (`false`) the warm-up ramp. Used only when `warmup_paus
        end
      end
    end
  end
end
