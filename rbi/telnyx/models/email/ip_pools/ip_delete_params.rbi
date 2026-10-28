# typed: strong

module Telnyx
  module Models
    module Email
      module IPPools
        class IPDeleteParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::IPPools::IPDeleteParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :ip_id

          # Set together with `force=true` to remove the last IP in the pool. Acknowledges
          # that mail routed to the emptied pool is held until the pool has a sendable IP
          # again.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :drain

          sig { params(drain: T::Boolean).void }
          attr_writer :drain

          # Set together with `drain=true` to remove the last IP in the pool. Either flag
          # alone has no effect.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :force

          sig { params(force: T::Boolean).void }
          attr_writer :force

          sig do
            params(
              id: String,
              ip_id: String,
              drain: T::Boolean,
              force: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            ip_id:,
            # Set together with `force=true` to remove the last IP in the pool. Acknowledges
            # that mail routed to the emptied pool is held until the pool has a sendable IP
            # again.
            drain: nil,
            # Set together with `drain=true` to remove the last IP in the pool. Either flag
            # alone has no effect.
            force: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                ip_id: String,
                drain: T::Boolean,
                force: T::Boolean,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
