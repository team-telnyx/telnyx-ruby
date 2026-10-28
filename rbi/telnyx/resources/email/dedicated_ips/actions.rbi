# typed: strong

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
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Email::DedicatedIPShowResponse)
          end
          def complete_warmup(
            # The dedicated IP identifier (UUID).
            id,
            request_options: {}
          )
          end

          # Pause the warm-up ramp at its current stage. While paused, the IP releases no
          # first-attempt sends from hold and the ramp does not advance. Only a `warming_up`
          # IP can be paused; pausing an already paused IP refreshes `paused_at`.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Email::DedicatedIPShowResponse)
          end
          def pause_warmup(
            # The dedicated IP identifier (UUID).
            id,
            request_options: {}
          )
          end

          # Resume a paused warm-up ramp from its held stage. Only a `warming_up` IP can be
          # resumed; resuming a ramp that is not paused returns the IP unchanged.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Email::DedicatedIPShowResponse)
          end
          def resume_warmup(
            # The dedicated IP identifier (UUID).
            id,
            request_options: {}
          )
          end

          # Start the warm-up ramp (`provisioning` to `warming_up`). The ramp never starts
          # automatically. Only a `provisioning` IP can be started; a `suspended` IP returns
          # `409`. Starting does not check DNS: the IP carries mail only while
          # `dns_confirmed_at` is set and the IP is in a pool that routes mail.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Email::DedicatedIPShowResponse)
          end
          def start_warmup(
            # The dedicated IP identifier (UUID).
            id,
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
end
