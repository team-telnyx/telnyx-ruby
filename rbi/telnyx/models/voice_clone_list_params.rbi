# typed: strong

module Telnyx
  module Models
    class VoiceCloneListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceCloneListParams, Telnyx::Internal::AnyHash)
        end

      # Case-insensitive substring filter on the name field.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name

      sig { params(filter_name: String).void }
      attr_writer :filter_name

      # Page number for pagination (1-based).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Number of results per page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      sig { returns(T.nilable(Telnyx::VoiceCloneListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter_name: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Case-insensitive substring filter on the name field.
        filter_name: nil,
        # Page number for pagination (1-based).
        page_number: nil,
        # Number of results per page.
        page_size: nil,
        # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_name: String,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::VoiceCloneListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Sort order. Prefix with `-` for descending. Defaults to `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VoiceCloneListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME = T.let(:name, Telnyx::VoiceCloneListParams::Sort::TaggedSymbol)
        NAME_DESC =
          T.let(:"-name", Telnyx::VoiceCloneListParams::Sort::TaggedSymbol)
        CREATED_AT =
          T.let(:created_at, Telnyx::VoiceCloneListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::VoiceCloneListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VoiceCloneListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
