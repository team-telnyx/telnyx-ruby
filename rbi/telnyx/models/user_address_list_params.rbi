# typed: strong

module Telnyx
  module Models
    class UserAddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::UserAddressListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[customer_reference][eq], filter[customer_reference][contains],
      # filter[street_address][contains]
      sig { returns(T.nilable(Telnyx::UserAddressListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::UserAddressListParams::Filter::OrHash).void }
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>street_address</code>: sorts the result by the
      #     <code>street_address</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-street_address</code>: sorts the result by the
      #     <code>street_address</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      sig { returns(T.nilable(Telnyx::UserAddressListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::UserAddressListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::UserAddressListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::UserAddressListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[street_address][contains]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>street_address</code>: sorts the result by the
        #     <code>street_address</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-street_address</code>: sorts the result by the
        #     <code>street_address</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::UserAddressListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::UserAddressListParams::Sort::OrSymbol,
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
              Telnyx::UserAddressListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter user addresses via the customer reference. Supports both exact matching
        # (eq) and partial matching (contains). Matching is not case-sensitive.
        sig do
          returns(
            T.nilable(Telnyx::UserAddressListParams::Filter::CustomerReference)
          )
        end
        attr_reader :customer_reference

        sig do
          params(
            customer_reference:
              Telnyx::UserAddressListParams::Filter::CustomerReference::OrHash
          ).void
        end
        attr_writer :customer_reference

        # Filter user addresses via street address. Supports partial matching (contains).
        # Matching is not case-sensitive.
        sig do
          returns(
            T.nilable(Telnyx::UserAddressListParams::Filter::StreetAddress)
          )
        end
        attr_reader :street_address

        sig do
          params(
            street_address:
              Telnyx::UserAddressListParams::Filter::StreetAddress::OrHash
          ).void
        end
        attr_writer :street_address

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[street_address][contains]
        sig do
          params(
            customer_reference:
              Telnyx::UserAddressListParams::Filter::CustomerReference::OrHash,
            street_address:
              Telnyx::UserAddressListParams::Filter::StreetAddress::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter user addresses via the customer reference. Supports both exact matching
          # (eq) and partial matching (contains). Matching is not case-sensitive.
          customer_reference: nil,
          # Filter user addresses via street address. Supports partial matching (contains).
          # Matching is not case-sensitive.
          street_address: nil
        )
        end

        sig do
          override.returns(
            {
              customer_reference:
                Telnyx::UserAddressListParams::Filter::CustomerReference,
              street_address:
                Telnyx::UserAddressListParams::Filter::StreetAddress
            }
          )
        end
        def to_hash
        end

        class CustomerReference < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::UserAddressListParams::Filter::CustomerReference,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, user addresses with <code>customer_reference</code> containing the
          # given value will be returned. Matching is not case-sensitive.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter user addresses via exact customer reference match. Matching is not
          # case-sensitive.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          # Filter user addresses via the customer reference. Supports both exact matching
          # (eq) and partial matching (contains). Matching is not case-sensitive.
          sig { params(contains: String, eq: String).returns(T.attached_class) }
          def self.new(
            # If present, user addresses with <code>customer_reference</code> containing the
            # given value will be returned. Matching is not case-sensitive.
            contains: nil,
            # Filter user addresses via exact customer reference match. Matching is not
            # case-sensitive.
            eq: nil
          )
          end

          sig { override.returns({ contains: String, eq: String }) }
          def to_hash
          end
        end

        class StreetAddress < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::UserAddressListParams::Filter::StreetAddress,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, user addresses with <code>street_address</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # Filter user addresses via street address. Supports partial matching (contains).
          # Matching is not case-sensitive.
          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, user addresses with <code>street_address</code> containing the given
            # value will be returned. Matching is not case-sensitive. Requires at least three
            # characters.
            contains: nil
          )
          end

          sig { override.returns({ contains: String }) }
          def to_hash
          end
        end
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>street_address</code>: sorts the result by the
      #     <code>street_address</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-street_address</code>: sorts the result by the
      #     <code>street_address</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UserAddressListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::UserAddressListParams::Sort::TaggedSymbol)
        FIRST_NAME =
          T.let(:first_name, Telnyx::UserAddressListParams::Sort::TaggedSymbol)
        LAST_NAME =
          T.let(:last_name, Telnyx::UserAddressListParams::Sort::TaggedSymbol)
        BUSINESS_NAME =
          T.let(
            :business_name,
            Telnyx::UserAddressListParams::Sort::TaggedSymbol
          )
        STREET_ADDRESS =
          T.let(
            :street_address,
            Telnyx::UserAddressListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UserAddressListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
