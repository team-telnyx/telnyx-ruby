# typed: strong

module Telnyx
  module Models
    class DocumentLinkListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DocumentLinkListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter for document links (deepObject style). Originally:
      # filter[linked_record_type], filter[linked_resource_id]
      sig { returns(T.nilable(Telnyx::DocumentLinkListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::DocumentLinkListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[size],
      # page[number]
      sig { returns(T.nilable(Telnyx::DocumentLinkListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::DocumentLinkListParams::Page::OrHash).void }
      attr_writer :page

      sig do
        params(
          filter: Telnyx::DocumentLinkListParams::Filter::OrHash,
          page: Telnyx::DocumentLinkListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter for document links (deepObject style). Originally:
        # filter[linked_record_type], filter[linked_resource_id]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::DocumentLinkListParams::Filter,
            page: Telnyx::DocumentLinkListParams::Page,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DocumentLinkListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # The linked_record_type of the document to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :linked_record_type

        sig { params(linked_record_type: String).void }
        attr_writer :linked_record_type

        # The linked_resource_id of the document to filter on.
        sig { returns(T.nilable(String)) }
        attr_reader :linked_resource_id

        sig { params(linked_resource_id: String).void }
        attr_writer :linked_resource_id

        # Consolidated filter parameter for document links (deepObject style). Originally:
        # filter[linked_record_type], filter[linked_resource_id]
        sig do
          params(
            linked_record_type: String,
            linked_resource_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The linked_record_type of the document to filter on.
          linked_record_type: nil,
          # The linked_resource_id of the document to filter on.
          linked_resource_id: nil
        )
        end

        sig do
          override.returns(
            { linked_record_type: String, linked_resource_id: String }
          )
        end
        def to_hash
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DocumentLinkListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # The page number to load
          number: nil,
          # The size of the page
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
