# typed: strong

module Telnyx
  module Models
    class MediaListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MediaListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[content_type][]
      sig { returns(T.nilable(Telnyx::MediaListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::MediaListParams::Filter::OrHash).void }
      attr_writer :filter

      sig do
        params(
          filter: Telnyx::MediaListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[content_type][]
        filter: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::MediaListParams::Filter,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::MediaListParams::Filter, Telnyx::Internal::AnyHash)
          end

        # Filters files by given content types
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :content_type

        sig { params(content_type: T::Array[String]).void }
        attr_writer :content_type

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[content_type][]
        sig { params(content_type: T::Array[String]).returns(T.attached_class) }
        def self.new(
          # Filters files by given content types
          content_type: nil
        )
        end

        sig { override.returns({ content_type: T::Array[String] }) }
        def to_hash
        end
      end
    end
  end
end
