# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class ConversationalComponentPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :phone_number

          # List of commands
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command
                ]
              )
            )
          end
          attr_reader :commands

          sig do
            params(
              commands:
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command::OrHash
                ]
            ).void
          end
          attr_writer :commands

          # List of ice breakers
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :ice_breakers

          sig { params(ice_breakers: T::Array[String]).void }
          attr_writer :ice_breakers

          sig do
            params(
              phone_number: String,
              commands:
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command::OrHash
                ],
              ice_breakers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            phone_number:,
            # List of commands
            commands: nil,
            # List of ice breakers
            ice_breakers: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                phone_number: String,
                commands:
                  T::Array[
                    Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command
                  ],
                ice_breakers: T::Array[String],
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Command < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command,
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
