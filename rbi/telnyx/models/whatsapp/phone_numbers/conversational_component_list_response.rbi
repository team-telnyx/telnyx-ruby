# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class ConversationalComponentListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # List of commands
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::Command
                  ]
                )
              )
            end
            attr_reader :commands

            sig do
              params(
                commands:
                  T::Array[
                    Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::Command::OrHash
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
                    Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::Command::OrHash
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
                      Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::Command
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
                    Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse::Data::Command,
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
end
