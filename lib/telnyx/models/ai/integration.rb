# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Integrations#retrieve
      class Integration < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute available_tools
        #
        #   @return [Array<String>]
        required :available_tools, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute logo_url
        #
        #   @return [String]
        required :logo_url, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::AI::Integration::Status]
        required :status, enum: -> { Telnyx::AI::Integration::Status }

        # @!method initialize(id:, available_tools:, description:, display_name:, logo_url:, name:, status:)
        #   @param id [String]
        #   @param available_tools [Array<String>]
        #   @param description [String]
        #   @param display_name [String]
        #   @param logo_url [String]
        #   @param name [String]
        #   @param status [Symbol, Telnyx::Models::AI::Integration::Status]

        # @see Telnyx::Models::AI::Integration#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DISCONNECTED = :disconnected
          CONNECTED = :connected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
