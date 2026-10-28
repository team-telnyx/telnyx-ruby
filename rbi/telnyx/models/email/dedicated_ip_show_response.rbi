# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPShowResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Email::DedicatedIPShowResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A dedicated sending IP address owned by the account.
        sig { returns(Telnyx::Email::DedicatedIP) }
        attr_reader :data

        sig { params(data: Telnyx::Email::DedicatedIP::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Email::DedicatedIP::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A dedicated sending IP address owned by the account.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::Email::DedicatedIP }) }
        def to_hash
        end
      end
    end
  end
end
