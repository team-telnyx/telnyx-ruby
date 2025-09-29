# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Texml#secrets
    class TexmlSecretsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TexmlSecretsResponse::Data, nil]
      optional :data, -> { Telnyx::Models::TexmlSecretsResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TexmlSecretsResponse::Data]

      # @see Telnyx::Models::TexmlSecretsResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute value
        #
        #   @return [Symbol, Telnyx::Models::TexmlSecretsResponse::Data::Value, nil]
        optional :value, enum: -> { Telnyx::Models::TexmlSecretsResponse::Data::Value }

        # @!method initialize(name: nil, value: nil)
        #   @param name [String]
        #   @param value [Symbol, Telnyx::Models::TexmlSecretsResponse::Data::Value]

        # @see Telnyx::Models::TexmlSecretsResponse::Data#value
        module Value
          extend Telnyx::Internal::Type::Enum

          REDACTED = :REDACTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
