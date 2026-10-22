# frozen_string_literal: true

module Telnyx
  module Models
    class NumbersError73c9788e53 < Telnyx::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute detail
      #
      #   @return [String, nil]
      optional :detail, String

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumbersError73c9788e53::Meta, nil]
      optional :meta, -> { Telnyx::NumbersError73c9788e53::Meta }

      # @!attribute source
      #
      #   @return [Telnyx::Models::NumbersError73c9788e53::Source, nil]
      optional :source, -> { Telnyx::NumbersError73c9788e53::Source }

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(code: nil, detail: nil, meta: nil, source: nil, title: nil)
      #   @param code [String]
      #   @param detail [String]
      #   @param meta [Telnyx::Models::NumbersError73c9788e53::Meta]
      #   @param source [Telnyx::Models::NumbersError73c9788e53::Source]
      #   @param title [String]

      # @see Telnyx::Models::NumbersError73c9788e53#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute url
        #   URL with additional information on the error.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(url: nil)
        #   @param url [String] URL with additional information on the error.
      end

      # @see Telnyx::Models::NumbersError73c9788e53#source
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
