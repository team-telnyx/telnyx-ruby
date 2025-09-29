# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AI#summarize
    class AISummarizeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute bucket
      #   The name of the bucket that contains the file to be summarized.
      #
      #   @return [String]
      required :bucket, String

      # @!attribute filename
      #   The name of the file to be summarized.
      #
      #   @return [String]
      required :filename, String

      # @!attribute system_prompt
      #   A system prompt to guide the summary generation.
      #
      #   @return [String, nil]
      optional :system_prompt, String

      # @!method initialize(bucket:, filename:, system_prompt: nil, request_options: {})
      #   @param bucket [String] The name of the bucket that contains the file to be summarized.
      #
      #   @param filename [String] The name of the file to be summarized.
      #
      #   @param system_prompt [String] A system prompt to guide the summary generation.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
