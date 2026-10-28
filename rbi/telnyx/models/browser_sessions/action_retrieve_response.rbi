# typed: strong

module Telnyx
  module Models
    module BrowserSessions
      class ActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::BrowserSessions::ActionRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::BrowserSessions::ActionResponse)) }
        attr_reader :data

        sig do
          params(data: Telnyx::BrowserSessions::ActionResponse::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::BrowserSessions::ActionResponse::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::BrowserSessions::ActionResponse })
        end
        def to_hash
        end
      end
    end
  end
end
