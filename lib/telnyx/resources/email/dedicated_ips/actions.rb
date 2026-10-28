# frozen_string_literal: true

module Telnyx
  module Resources
    class Email
      class DedicatedIPs
        # Purchase and manage dedicated sending IP addresses for your Telnyx email
        # traffic.
        class Actions
          # Manually complete the warm-up ramp (`warming_up` to `active`), bypassing the
          # schedule. Use only for an IP already warmed elsewhere. Completion sets
          # `warmup.progress` to `100`, clears `warmup.daily_cap`, and applies the
          # ramp-complete allowance to the current UTC day: `warmup.today.cap` becomes
          # `100000000`, `warmup.today.granted` keeps the sends already released today, and
          # `warmup.today.remaining` becomes `cap` minus `granted`. Once completion applies
          # this allowance, an exhausted stage allowance does not block the next eligible
          # first-attempt send. The response reports these values. On an `active` IP,
          # `warmup.progress` and `warmup.daily_cap` are informational: they can keep
          # earlier values after a suspension is lifted and do not limit sending.
          #
          # @overload complete_warmup(id, request_options: {})
          #
          # @param id [String] The dedicated IP identifier (UUID).
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
          #
          # @see Telnyx::Models::Email::DedicatedIPs::ActionCompleteWarmupParams
          def complete_warmup(id, params = {})
            @client.request(
              method: :post,
              path: ["email/dedicated_ips/%1$s/actions/complete_warmup", id],
              model: Telnyx::Email::DedicatedIPShowResponse,
              options: params[:request_options]
            )
          end

          # Pause the warm-up ramp at its current stage. While paused, the IP releases no
          # first-attempt sends from hold and the ramp does not advance. Only a `warming_up`
          # IP can be paused; pausing an already paused IP refreshes `paused_at`.
          #
          # @overload pause_warmup(id, request_options: {})
          #
          # @param id [String] The dedicated IP identifier (UUID).
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
          #
          # @see Telnyx::Models::Email::DedicatedIPs::ActionPauseWarmupParams
          def pause_warmup(id, params = {})
            @client.request(
              method: :post,
              path: ["email/dedicated_ips/%1$s/actions/pause_warmup", id],
              model: Telnyx::Email::DedicatedIPShowResponse,
              options: params[:request_options]
            )
          end

          # Resume a paused warm-up ramp from its held stage. Only a `warming_up` IP can be
          # resumed; resuming a ramp that is not paused returns the IP unchanged.
          #
          # @overload resume_warmup(id, request_options: {})
          #
          # @param id [String] The dedicated IP identifier (UUID).
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
          #
          # @see Telnyx::Models::Email::DedicatedIPs::ActionResumeWarmupParams
          def resume_warmup(id, params = {})
            @client.request(
              method: :post,
              path: ["email/dedicated_ips/%1$s/actions/resume_warmup", id],
              model: Telnyx::Email::DedicatedIPShowResponse,
              options: params[:request_options]
            )
          end

          # Start the warm-up ramp (`provisioning` to `warming_up`). The ramp never starts
          # automatically. Only a `provisioning` IP can be started; a `suspended` IP returns
          # `409`. Starting does not check DNS: the IP carries mail only while
          # `dns_confirmed_at` is set and the IP is in a pool that routes mail.
          #
          # @overload start_warmup(id, request_options: {})
          #
          # @param id [String] The dedicated IP identifier (UUID).
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Email::DedicatedIPShowResponse]
          #
          # @see Telnyx::Models::Email::DedicatedIPs::ActionStartWarmupParams
          def start_warmup(id, params = {})
            @client.request(
              method: :post,
              path: ["email/dedicated_ips/%1$s/actions/start_warmup", id],
              model: Telnyx::Email::DedicatedIPShowResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
