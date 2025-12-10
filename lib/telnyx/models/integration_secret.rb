# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IntegrationSecrets#list
    class IntegrationSecret < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute identifier
      #
      #   @return [String]
      required :identifier, String

      # @!attribute record_type
      #
      #   @return [String]
      required :record_type, String

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, created_at:, identifier:, record_type:, updated_at: nil)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param identifier [String]
      #   @param record_type [String]
      #   @param updated_at [Time]
    end
  end
end
