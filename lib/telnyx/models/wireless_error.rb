# frozen_string_literal: true

module Telnyx
  module Models
    class WirelessError < Telnyx::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute title
      #
      #   @return [String]
      required :title, String

      # @!attribute detail
      #
      #   @return [String, nil]
      optional :detail, String

      # @!attribute meta
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :meta, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute source
      #
      #   @return [Telnyx::Models::WirelessError::Source, nil]
      optional :source, -> { Telnyx::WirelessError::Source }

      # @!method initialize(code:, title:, detail: nil, meta: nil, source: nil)
      #   @param code [String]
      #   @param title [String]
      #   @param detail [String]
      #   @param meta [Hash{Symbol=>Object}]
      #   @param source [Telnyx::Models::WirelessError::Source]

      # @see Telnyx::Models::WirelessError#source
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
