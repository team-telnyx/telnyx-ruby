# typed: strong

module Telnyx
  module Models
    class MessagingProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessagingProfileListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally: filter[name]
      sig { returns(T.nilable(Telnyx::MessagingProfileListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::MessagingProfileListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Filter profiles by name containing the given string.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name_contains

      sig { params(filter_name_contains: String).void }
      attr_writer :filter_name_contains

      # Filter profiles by exact name match.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_name_eq

      sig { params(filter_name_eq: String).void }
      attr_writer :filter_name_eq

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::MessagingProfileListParams::Filter::OrHash,
          filter_name_contains: String,
          filter_name_eq: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        filter: nil,
        # Filter profiles by name containing the given string.
        filter_name_contains: nil,
        # Filter profiles by exact name match.
        filter_name_eq: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::MessagingProfileListParams::Filter,
            filter_name_contains: String,
            filter_name_eq: String,
            page_number: Integer,
            page_size: Integer,
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
              Telnyx::MessagingProfileListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by name
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Consolidated filter parameter (deepObject style). Originally: filter[name]
        sig { params(name: String).returns(T.attached_class) }
        def self.new(
          # Filter by name
          name: nil
        )
        end

        sig { override.returns({ name: String }) }
        def to_hash
        end
      end
    end
  end
end
