# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class LogMessageRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::LogMessageRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[Telnyx::ExternalConnections::LogMessage]))
        end
        attr_reader :log_messages

        sig do
          params(
            log_messages:
              T::Array[Telnyx::ExternalConnections::LogMessage::OrHash]
          ).void
        end
        attr_writer :log_messages

        sig do
          params(
            log_messages:
              T::Array[Telnyx::ExternalConnections::LogMessage::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(log_messages: nil)
        end

        sig do
          override.returns(
            { log_messages: T::Array[Telnyx::ExternalConnections::LogMessage] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
