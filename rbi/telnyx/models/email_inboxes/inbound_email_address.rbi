# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class InboundEmailAddress < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::InboundEmailAddress,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
