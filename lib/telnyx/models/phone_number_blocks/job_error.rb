# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      class JobError < Telnyx::Internal::Type::BaseModel
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
        #   @return [Telnyx::Models::PhoneNumberBlocks::JobError::Meta, nil]
        optional :meta, -> { Telnyx::PhoneNumberBlocks::JobError::Meta }

        # @!attribute source
        #
        #   @return [Telnyx::Models::PhoneNumberBlocks::JobError::Source, nil]
        optional :source, -> { Telnyx::PhoneNumberBlocks::JobError::Source }

        # @!method initialize(code:, title:, detail: nil, meta: nil, source: nil)
        #   @param code [String]
        #   @param title [String]
        #   @param detail [String]
        #   @param meta [Telnyx::Models::PhoneNumberBlocks::JobError::Meta]
        #   @param source [Telnyx::Models::PhoneNumberBlocks::JobError::Source]

        # @see Telnyx::Models::PhoneNumberBlocks::JobError#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute url
          #   URL with additional information on the error.
          #
          #   @return [String, nil]
          optional :url, String

          # @!method initialize(url: nil)
          #   @param url [String] URL with additional information on the error.
        end

        # @see Telnyx::Models::PhoneNumberBlocks::JobError#source
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
end
