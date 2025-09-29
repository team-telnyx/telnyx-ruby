# typed: strong

module Telnyx
  module Models
    class AISummarizeParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AISummarizeParams, Telnyx::Internal::AnyHash)
        end

      # The name of the bucket that contains the file to be summarized.
      sig { returns(String) }
      attr_accessor :bucket

      # The name of the file to be summarized.
      sig { returns(String) }
      attr_accessor :filename

      # A system prompt to guide the summary generation.
      sig { returns(T.nilable(String)) }
      attr_reader :system_prompt

      sig { params(system_prompt: String).void }
      attr_writer :system_prompt

      sig do
        params(
          bucket: String,
          filename: String,
          system_prompt: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the bucket that contains the file to be summarized.
        bucket:,
        # The name of the file to be summarized.
        filename:,
        # A system prompt to guide the summary generation.
        system_prompt: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            bucket: String,
            filename: String,
            system_prompt: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
