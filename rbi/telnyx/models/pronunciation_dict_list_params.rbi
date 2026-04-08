# typed: strong

module Telnyx
  module Models
    class PronunciationDictListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::PronunciationDictListParams, Telnyx::Internal::AnyHash)
        end

      # Page number (1-based). Defaults to 1.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page. Defaults to 20, maximum 250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Page number (1-based). Defaults to 1.
        page_number: nil,
        # Number of results per page. Defaults to 20, maximum 250.
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
