# frozen_string_literal: true

module Telnyx
  module Models
    module BundlePricing
      class UserBundleResource < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Resource's ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   Date the resource was created.
        #
        #   @return [Date]
        required :created_at, Date

        # @!attribute resource
        #   The resource itself (usually a phone number).
        #
        #   @return [String]
        required :resource, String

        # @!attribute resource_type
        #   The type of the resource (usually 'number').
        #
        #   @return [String]
        required :resource_type, String

        # @!attribute updated_at
        #   Date the resource was last updated.
        #
        #   @return [Date, nil]
        optional :updated_at, Date, nil?: true

        # @!method initialize(id:, created_at:, resource:, resource_type:, updated_at: nil)
        #   @param id [String] Resource's ID.
        #
        #   @param created_at [Date] Date the resource was created.
        #
        #   @param resource [String] The resource itself (usually a phone number).
        #
        #   @param resource_type [String] The type of the resource (usually 'number').
        #
        #   @param updated_at [Date, nil] Date the resource was last updated.
      end
    end
  end
end
