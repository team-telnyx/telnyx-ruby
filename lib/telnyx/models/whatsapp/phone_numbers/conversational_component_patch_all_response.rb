# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::ConversationalComponents#patch_all
        class ConversationalComponentPatchAllResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data, nil]
          optional :data,
                   -> { Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data]

          # @see Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse#data
          class Data < Telnyx::Internal::Type::BaseModel
            # @!attribute commands
            #   List of commands
            #
            #   @return [Array<Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data::Command>, nil]
            optional :commands,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data::Command] }

            # @!attribute ice_breakers
            #   List of ice breakers
            #
            #   @return [Array<String>, nil]
            optional :ice_breakers, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute phone_number
            #   Phone number in E164 format
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!method initialize(commands: nil, ice_breakers: nil, phone_number: nil, record_type: nil)
            #   @param commands [Array<Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse::Data::Command>] List of commands
            #
            #   @param ice_breakers [Array<String>] List of ice breakers
            #
            #   @param phone_number [String] Phone number in E164 format
            #
            #   @param record_type [String]

            class Command < Telnyx::Internal::Type::BaseModel
              # @!attribute command
              #
              #   @return [String, nil]
              optional :command, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!method initialize(command: nil, description: nil)
              #   @param command [String]
              #   @param description [String]
            end
          end
        end
      end
    end
  end
end
