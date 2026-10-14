# typed: strong

module Telnyx
  module Models
    module AI
      class WebsocketSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::WebsocketSettings, Telnyx::Internal::AnyHash)
          end

        # Integration secret identifier whose value Telnyx sends as an
        # `Authorization: Bearer <value>` header on the upgrade request. Resolved on every
        # connection attempt, so a rotated secret is picked up by the next reconnect.
        sig { returns(T.nilable(String)) }
        attr_reader :auth_ref

        sig { params(auth_ref: String).void }
        attr_writer :auth_ref

        # Whether Telnyx opens a WebSocket to `url` for each of this assistant's
        # conversations. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        # The `ws://` or `wss://` endpoint Telnyx connects to. Required when `enabled` is
        # `true`. Must be externally reachable — localhost, private IP ranges and `.local`
        # domains are rejected.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # Streams conversation and telephony events to a WebSocket server you host, and
        # accepts messages injected back into the conversation. Telnyx opens the
        # connection as a client, once per conversation. Delivery is best effort
        # throughout: while the connection is down events are dropped rather than queued,
        # and no socket failure is ever allowed to affect the call. Beta feature.
        sig do
          params(auth_ref: String, enabled: T::Boolean, url: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Integration secret identifier whose value Telnyx sends as an
          # `Authorization: Bearer <value>` header on the upgrade request. Resolved on every
          # connection attempt, so a rotated secret is picked up by the next reconnect.
          auth_ref: nil,
          # Whether Telnyx opens a WebSocket to `url` for each of this assistant's
          # conversations. Defaults to `false`.
          enabled: nil,
          # The `ws://` or `wss://` endpoint Telnyx connects to. Required when `enabled` is
          # `true`. Must be externally reachable — localhost, private IP ranges and `.local`
          # domains are rejected.
          url: nil
        )
        end

        sig do
          override.returns(
            { auth_ref: String, enabled: T::Boolean, url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
