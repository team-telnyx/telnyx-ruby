# frozen_string_literal: true

module Telnyx
  module Models
    class APIError < Telnyx::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute meta
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :meta, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute source
      #
      #   @return [Telnyx::Models::APIError::Source, nil]
      optional :source, -> { Telnyx::APIError::Source }

      # @!method initialize(code:, title:, description: nil, meta: nil, source: nil)
      #   @param code [String]
      #   @param title [String]
      #   @param description [String]
      #   @param meta [Hash{Symbol=>Object}]
      #   @param source [Telnyx::Models::APIError::Source]

      # @see Telnyx::Models::APIError#source
      class Source < Telnyx::Internal::Type::BaseModel
        # @!attribute parameter
        #   Indicates which query parameter caused the error.
        #
        #   @return [String, nil]
        optional :parameter, String

        # @!attribute pointer
        #   JSON pointer (RFC6901) to the offending entity.
        #
        #   @return [String, nil]
        optional :pointer, String

        # @!method initialize(parameter: nil, pointer: nil)
        #   @param parameter [String] Indicates which query parameter caused the error.
        #
        #   @param pointer [String] JSON pointer (RFC6901) to the offending entity.
      end
    end
  end
end
