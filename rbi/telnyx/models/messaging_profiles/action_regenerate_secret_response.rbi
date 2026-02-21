# typed: strong

module Telnyx
  module Models
    module MessagingProfiles
      class ActionRegenerateSecretResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessagingProfiles::ActionRegenerateSecretResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::MessagingProfile)) }
        attr_reader :data

        sig { params(data: Telnyx::MessagingProfile::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::MessagingProfile::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::MessagingProfile }) }
        def to_hash
        end
      end
    end
  end
end
