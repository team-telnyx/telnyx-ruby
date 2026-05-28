# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class UserDataUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::UserDataUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Whatsapp::WhatsappUserData)) }
        attr_reader :data

        sig { params(data: Telnyx::Whatsapp::WhatsappUserData::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Whatsapp::WhatsappUserData::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Whatsapp::WhatsappUserData }) }
        def to_hash
        end
      end
    end
  end
end
