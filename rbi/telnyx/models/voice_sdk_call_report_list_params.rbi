# typed: strong

module Telnyx
  module Models
    class VoiceSDKCallReportListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceSDKCallReportListParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Set the order of the results by creation date. `asc` and `created_at` sort
      # oldest reports first; `desc` and `-created_at` sort newest reports first. If not
      # given, results are sorted by creation date in descending order.
      sig do
        returns(T.nilable(Telnyx::VoiceSDKCallReportListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::VoiceSDKCallReportListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceSDKCallReportListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        page_number: nil,
        page_size: nil,
        # Set the order of the results by creation date. `asc` and `created_at` sort
        # oldest reports first; `desc` and `-created_at` sort newest reports first. If not
        # given, results are sorted by creation date in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::VoiceSDKCallReportListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Set the order of the results by creation date. `asc` and `created_at` sort
      # oldest reports first; `desc` and `-created_at` sort newest reports first. If not
      # given, results are sorted by creation date in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::VoiceSDKCallReportListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC =
          T.let(:asc, Telnyx::VoiceSDKCallReportListParams::Sort::TaggedSymbol)
        DESC =
          T.let(:desc, Telnyx::VoiceSDKCallReportListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::VoiceSDKCallReportListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::VoiceSDKCallReportListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VoiceSDKCallReportListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
