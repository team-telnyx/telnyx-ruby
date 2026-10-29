# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class HostedSignupCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::HostedSignupCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Whatsapp::WhatsappHostedSignup)) }
        attr_reader :data

        sig do
          params(data: Telnyx::Whatsapp::WhatsappHostedSignup::OrHash).void
        end
        attr_writer :data

        sig do
          params(data: Telnyx::Whatsapp::WhatsappHostedSignup::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: Telnyx::Whatsapp::WhatsappHostedSignup })
        end
        def to_hash
        end
      end
    end
  end
end
