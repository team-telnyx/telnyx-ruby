# typed: strong

module Telnyx
  module Models
    module Email
      class IPPoolDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Email::IPPoolDeleteParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Set together with `force=true` to delete a pool that still has IPs. Acknowledges
        # deletion while the pool still has members; this flag does not reroute already
        # queued messages.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :drain

        sig { params(drain: T::Boolean).void }
        attr_writer :drain

        # Set together with `drain=true` to delete a pool that still has IPs. Either flag
        # alone has no effect.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force

        sig { params(force: T::Boolean).void }
        attr_writer :force

        sig do
          params(
            id: String,
            drain: T::Boolean,
            force: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Set together with `force=true` to delete a pool that still has IPs. Acknowledges
          # deletion while the pool still has members; this flag does not reroute already
          # queued messages.
          drain: nil,
          # Set together with `drain=true` to delete a pool that still has IPs. Either flag
          # alone has no effect.
          force: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
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
