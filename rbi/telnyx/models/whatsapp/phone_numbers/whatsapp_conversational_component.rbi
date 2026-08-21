# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class WhatsappConversationalComponent < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent,
                Telnyx::Internal::AnyHash
              )
            end

          # List of commands
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::Command
                ]
              )
            )
          end
          attr_reader :commands

          sig do
            params(
              commands:
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::Command::OrHash
                ]
            ).void
          end
          attr_writer :commands

          # List of ice breakers
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ice_breakers

          sig { params(ice_breakers: T::Array[String]).void }
          attr_writer :ice_breakers

          # Phone number in E164 format
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              commands:
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::Command::OrHash
                ],
              ice_breakers: T::Array[String],
              phone_number: String,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # List of commands
            commands: nil,
            # List of ice breakers
            ice_breakers: nil,
            # Phone number in E164 format
            phone_number: nil,
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                commands:
                  T::Array[
                    Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::Command
                  ],
                ice_breakers: T::Array[String],
                phone_number: String,
                record_type: String
              }
            )
          end
          def to_hash
          end

          class Command < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent::Command,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :command

            sig { params(command: String).void }
            attr_writer :command

            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            sig do
              params(command: String, description: String).returns(
                T.attached_class
              )
            end
            def self.new(command: nil, description: nil)
            end

            sig { override.returns({ command: String, description: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
