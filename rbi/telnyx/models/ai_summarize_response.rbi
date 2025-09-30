# typed: strong

module Telnyx
  module Models
    class AISummarizeResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::AISummarizeResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::Models::AISummarizeResponse::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::Models::AISummarizeResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::Models::AISummarizeResponse::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::Models::AISummarizeResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AISummarizeResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :summary

        sig { params(summary: String).returns(T.attached_class) }
        def self.new(summary:)
        end

        sig { override.returns({ summary: String }) }
        def to_hash
        end
      end
    end
  end
end
