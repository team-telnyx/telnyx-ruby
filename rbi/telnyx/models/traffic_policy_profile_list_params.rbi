# typed: strong

module Telnyx
  module Models
    class TrafficPolicyProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TrafficPolicyProfileListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter by service ID.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_service

      sig { params(filter_service: String).void }
      attr_writer :filter_service

      # Filter by traffic policy profile type.
      sig do
        returns(
          T.nilable(
            Telnyx::TrafficPolicyProfileListParams::FilterType::OrSymbol
          )
        )
      end
      attr_reader :filter_type

      sig do
        params(
          filter_type:
            Telnyx::TrafficPolicyProfileListParams::FilterType::OrSymbol
        ).void
      end
      attr_writer :filter_type

      # The page number to load.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # The size of the page.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Sorts traffic policy profiles by the given field. Defaults to ascending order
      # unless field is prefixed with a minus sign.
      sig do
        returns(
          T.nilable(Telnyx::TrafficPolicyProfileListParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: Telnyx::TrafficPolicyProfileListParams::Sort::OrSymbol
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter_service: String,
          filter_type:
            Telnyx::TrafficPolicyProfileListParams::FilterType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::TrafficPolicyProfileListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by service ID.
        filter_service: nil,
        # Filter by traffic policy profile type.
        filter_type: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
        # Sorts traffic policy profiles by the given field. Defaults to ascending order
        # unless field is prefixed with a minus sign.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_service: String,
            filter_type:
              Telnyx::TrafficPolicyProfileListParams::FilterType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::TrafficPolicyProfileListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by traffic policy profile type.
      module FilterType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TrafficPolicyProfileListParams::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHITELIST =
          T.let(
            :whitelist,
            Telnyx::TrafficPolicyProfileListParams::FilterType::TaggedSymbol
          )
        BLACKLIST =
          T.let(
            :blacklist,
            Telnyx::TrafficPolicyProfileListParams::FilterType::TaggedSymbol
          )
        THROTTLING =
          T.let(
            :throttling,
            Telnyx::TrafficPolicyProfileListParams::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TrafficPolicyProfileListParams::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Sorts traffic policy profiles by the given field. Defaults to ascending order
      # unless field is prefixed with a minus sign.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::TrafficPolicyProfileListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SERVICE =
          T.let(
            :service,
            Telnyx::TrafficPolicyProfileListParams::Sort::TaggedSymbol
          )
        DESC_SERVICE =
          T.let(
            :"-service",
            Telnyx::TrafficPolicyProfileListParams::Sort::TaggedSymbol
          )
        TYPE =
          T.let(
            :type,
            Telnyx::TrafficPolicyProfileListParams::Sort::TaggedSymbol
          )
        DESC_TYPE =
          T.let(
            :"-type",
            Telnyx::TrafficPolicyProfileListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::TrafficPolicyProfileListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
