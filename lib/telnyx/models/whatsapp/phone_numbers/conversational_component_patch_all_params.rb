# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::ConversationalComponents#patch_all
        class ConversationalComponentPatchAllParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute commands
          #   List of commands
          #
          #   @return [Array<Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command>, nil]
          optional :commands,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command] }

          # @!attribute ice_breakers
          #   List of ice breakers
          #
          #   @return [Array<String>, nil]
          optional :ice_breakers, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(phone_number:, commands: nil, ice_breakers: nil, request_options: {})
          #   @param phone_number [String]
          #
          #   @param commands [Array<Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command>] List of commands
          #
          #   @param ice_breakers [Array<String>] List of ice breakers
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
