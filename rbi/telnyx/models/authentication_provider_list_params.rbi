# typed: strong

module Telnyx
  module Models
    class AuthenticationProviderListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AuthenticationProviderListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::AuthenticationProviderListParams::Page)) }
      attr_reader :page

      sig do
        params(
          page: Telnyx::AuthenticationProviderListParams::Page::OrHash
        ).void
      end
      attr_writer :page

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
      sig do
        returns(
          T.nilable(Telnyx::AuthenticationProviderListParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: Telnyx::AuthenticationProviderListParams::Sort::OrSymbol
        ).void
      end
      attr_writer :sort

      sig do
        params(
          page: Telnyx::AuthenticationProviderListParams::Page::OrHash,
          sort: Telnyx::AuthenticationProviderListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code>-</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>name</code>: sorts the result by the
        #     <code>name</code> field in ascending order.
        #   </li>
        #   <li>
        #     <code>-name</code>: sorts the result by the
        #     <code>name</code> field in descending order.
        #   </li>
        # </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Telnyx::AuthenticationProviderListParams::Page,
            sort: Telnyx::AuthenticationProviderListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AuthenticationProviderListParams::Page,
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

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
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

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code>-</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>name</code>: sorts the result by the
      #     <code>name</code> field in ascending order.
      #   </li>
      #   <li>
      #     <code>-name</code>: sorts the result by the
      #     <code>name</code> field in descending order.
      #   </li>
      # </ul><br/>If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::AuthenticationProviderListParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME =
          T.let(
            :name,
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        NAME_DESC =
          T.let(
            :"-name",
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        SHORT_NAME =
          T.let(
            :short_name,
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        SHORT_NAME_DESC =
          T.let(
            :"-short_name",
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        ACTIVE =
          T.let(
            :active,
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        ACTIVE_DESC =
          T.let(
            :"-active",
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        UPDATED_AT =
          T.let(
            :updated_at,
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )
        UPDATED_AT_DESC =
          T.let(
            :"-updated_at",
            Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::AuthenticationProviderListParams::Sort::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
