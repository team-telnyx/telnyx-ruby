# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AccessIPAddress#create
    class AccessIPAddressResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute ip_address
      #
      #   @return [String]
      required :ip_address, String

      # @!attribute source
      #
      #   @return [String]
      required :source, String

      # @!attribute status
      #   An enumeration.
      #
      #   @return [Symbol, Telnyx::Models::CloudflareSyncStatus]
      required :status, enum: -> { Telnyx::CloudflareSyncStatus }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id:, ip_address:, source:, status:, user_id:, created_at: nil, description: nil, updated_at: nil)
      #   @param id [String]
      #
      #   @param ip_address [String]
      #
      #   @param source [String]
      #
      #   @param status [Symbol, Telnyx::Models::CloudflareSyncStatus] An enumeration.
      #
      #   @param user_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param description [String]
      #
      #   @param updated_at [Time]
    end
  end
end
