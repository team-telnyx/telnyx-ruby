# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class WhatsappCallingRoutingData < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData,
                Telnyx::Internal::AnyHash
              )
            end

          # ID of the routing connection, or `null` when none is set.
          sig { returns(T.nilable(String)) }
          attr_accessor :connection_id

          # Phone number in E.164 format, with a leading `+`.
          sig { returns(String) }
          attr_accessor :phone_number

          # Identifies the type of the resource.
          sig do
            returns(
              Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig do
            params(
              connection_id: T.nilable(String),
              phone_number: String,
              record_type:
                Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # ID of the routing connection, or `null` when none is set.
            connection_id:,
            # Phone number in E.164 format, with a leading `+`.
            phone_number:,
            # Identifies the type of the resource.
            record_type:
          )
          end

          sig do
            override.returns(
              {
                connection_id: T.nilable(String),
                phone_number: String,
                record_type:
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Identifies the type of the resource.
          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WHATSAPP_CALLING_ROUTING =
              T.let(
                :whatsapp_calling_routing,
                Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
