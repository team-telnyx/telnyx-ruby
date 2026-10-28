# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Email::DedicatedIPUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Set together with `force: true` to move the last IP out of its current pool.
        # Acknowledges that mail routed to the emptied pool is held. Used only with
        # `pool_id`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :drain

        sig { params(drain: T::Boolean).void }
        attr_writer :drain

        # Set together with `drain: true` to move the last IP out of its current pool.
        # Used only with `pool_id`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force

        sig { params(force: T::Boolean).void }
        attr_writer :force

        # Move the IP to this pool, replacing its current membership. Use the IP's current
        # pool to change only its weight. To take an IP out of a pool, use
        # `DELETE /email/ip_pools/{id}/ips/{ip_id}`.
        sig { returns(T.nilable(String)) }
        attr_reader :pool_id

        sig { params(pool_id: String).void }
        attr_writer :pool_id

        # Alias for `warmup_paused`.
        sig do
          returns(T.nilable(Telnyx::Email::DedicatedIPUpdateParams::Warmup))
        end
        attr_reader :warmup

        sig do
          params(
            warmup: Telnyx::Email::DedicatedIPUpdateParams::Warmup::OrHash
          ).void
        end
        attr_writer :warmup

        # Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the
        # `pause_warmup` and `resume_warmup` actions. A Boolean value takes precedence
        # over `warmup.paused`. When a pause field is present and `pool_id` is absent,
        # supplying neither pause field as a Boolean invokes resume.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :warmup_paused

        sig { params(warmup_paused: T::Boolean).void }
        attr_writer :warmup_paused

        # Routing weight in the target pool. Used only with `pool_id`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :weight

        sig { params(weight: Integer).void }
        attr_writer :weight

        sig do
          params(
            id: String,
            drain: T::Boolean,
            force: T::Boolean,
            pool_id: String,
            warmup: Telnyx::Email::DedicatedIPUpdateParams::Warmup::OrHash,
            warmup_paused: T::Boolean,
            weight: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Set together with `force: true` to move the last IP out of its current pool.
          # Acknowledges that mail routed to the emptied pool is held. Used only with
          # `pool_id`.
          drain: nil,
          # Set together with `drain: true` to move the last IP out of its current pool.
          # Used only with `pool_id`.
          force: nil,
          # Move the IP to this pool, replacing its current membership. Use the IP's current
          # pool to change only its weight. To take an IP out of a pool, use
          # `DELETE /email/ip_pools/{id}/ips/{ip_id}`.
          pool_id: nil,
          # Alias for `warmup_paused`.
          warmup: nil,
          # Pause (`true`) or resume (`false`) the warm-up ramp; equivalent to the
          # `pause_warmup` and `resume_warmup` actions. A Boolean value takes precedence
          # over `warmup.paused`. When a pause field is present and `pool_id` is absent,
          # supplying neither pause field as a Boolean invokes resume.
          warmup_paused: nil,
          # Routing weight in the target pool. Used only with `pool_id`.
          weight: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              drain: T::Boolean,
              force: T::Boolean,
              pool_id: String,
              warmup: Telnyx::Email::DedicatedIPUpdateParams::Warmup,
              warmup_paused: T::Boolean,
              weight: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Warmup < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::DedicatedIPUpdateParams::Warmup,
                Telnyx::Internal::AnyHash
              )
            end

          # Pause (`true`) or resume (`false`) the warm-up ramp. Used only when
          # `warmup_paused` is not a Boolean.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :paused

          sig { params(paused: T::Boolean).void }
          attr_writer :paused

          # Alias for `warmup_paused`.
          sig { params(paused: T::Boolean).returns(T.attached_class) }
          def self.new(
            # Pause (`true`) or resume (`false`) the warm-up ramp. Used only when
            # `warmup_paused` is not a Boolean.
            paused: nil
          )
          end

          sig { override.returns({ paused: T::Boolean }) }
          def to_hash
          end
        end
      end
    end
  end
end
