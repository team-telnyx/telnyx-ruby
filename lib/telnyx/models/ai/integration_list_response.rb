# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Integrations#list
      class IntegrationListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::IntegrationListResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AI::IntegrationListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::AI::IntegrationListResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
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
          #   @return [Symbol, Telnyx::Models::AI::IntegrationListResponse::Data::Status]
          required :status, enum: -> { Telnyx::Models::AI::IntegrationListResponse::Data::Status }

          # @!method initialize(id:, available_tools:, description:, display_name:, logo_url:, name:, status:)
          #   @param id [String]
          #   @param available_tools [Array<String>]
          #   @param description [String]
          #   @param display_name [String]
          #   @param logo_url [String]
          #   @param name [String]
          #   @param status [Symbol, Telnyx::Models::AI::IntegrationListResponse::Data::Status]

          # @see Telnyx::Models::AI::IntegrationListResponse::Data#status
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
end
