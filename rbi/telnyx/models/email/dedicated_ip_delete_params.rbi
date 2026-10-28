# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPDeleteParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Email::DedicatedIPDeleteParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Set together with `force=true` to release the last IP in a pool. Acknowledges
        # that mail routed to the emptied pool is held until the pool has a sendable IP
        # again. Also accepted in the JSON body.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :query_drain

        sig { params(query_drain: T::Boolean).void }
        attr_writer :query_drain

        # Set together with `drain=true` to release the last IP in a pool. Either flag
        # alone has no effect. Also accepted in the JSON body.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :query_force

        sig { params(query_force: T::Boolean).void }
        attr_writer :query_force

        # Free-text reason recorded with the release. Also accepted in the JSON body.
        sig { returns(T.nilable(String)) }
        attr_reader :query_reason

        sig { params(query_reason: String).void }
        attr_writer :query_reason

        # Set together with `force: true` to release the last IP in a pool. Acknowledges
        # that mail routed to the emptied pool is held until the pool has a sendable IP
        # again.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :body_drain

        sig { params(body_drain: T::Boolean).void }
        attr_writer :body_drain

        # Set together with `drain: true` to release the last IP in a pool. Either flag
        # alone has no effect.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :body_force

        sig { params(body_force: T::Boolean).void }
        attr_writer :body_force

        # Free-text reason recorded with the release.
        sig { returns(T.nilable(String)) }
        attr_reader :body_reason

        sig { params(body_reason: String).void }
        attr_writer :body_reason

        sig do
          params(
            id: String,
            query_drain: T::Boolean,
            query_force: T::Boolean,
            query_reason: String,
            body_drain: T::Boolean,
            body_force: T::Boolean,
            body_reason: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Set together with `force=true` to release the last IP in a pool. Acknowledges
          # that mail routed to the emptied pool is held until the pool has a sendable IP
          # again. Also accepted in the JSON body.
          query_drain: nil,
          # Set together with `drain=true` to release the last IP in a pool. Either flag
          # alone has no effect. Also accepted in the JSON body.
          query_force: nil,
          # Free-text reason recorded with the release. Also accepted in the JSON body.
          query_reason: nil,
          # Set together with `force: true` to release the last IP in a pool. Acknowledges
          # that mail routed to the emptied pool is held until the pool has a sendable IP
          # again.
          body_drain: nil,
          # Set together with `drain: true` to release the last IP in a pool. Either flag
          # alone has no effect.
          body_force: nil,
          # Free-text reason recorded with the release.
          body_reason: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              query_drain: T::Boolean,
              query_force: T::Boolean,
              query_reason: String,
              body_drain: T::Boolean,
              body_force: T::Boolean,
              body_reason: String,
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
