# frozen_string_literal: true

module Telnyx
  module Models
    module SessionAnalysis
      class MetadataFieldMapping < Telnyx::Internal::Type::BaseModel
        # @!attribute local_field
        #
        #   @return [String]
        required :local_field, String

        # @!attribute parent_field
        #
        #   @return [String]
        required :parent_field, String

        # @!method initialize(local_field:, parent_field:)
        #   @param local_field [String]
        #   @param parent_field [String]
      end
    end
  end
end
