# typed: strong

module Telnyx
  module Models
    class AddressListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AddressListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[customer_reference][eq], filter[customer_reference][contains],
      # filter[used_as_emergency], filter[street_address][contains],
      # filter[address_book][eq]
      sig { returns(T.nilable(Telnyx::AddressListParams::Filter)) }
      attr_reader :filter

      sig { params(filter: Telnyx::AddressListParams::Filter::OrHash).void }
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::AddressListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::AddressListParams::Page::OrHash).void }
      attr_writer :page

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
      sig { returns(T.nilable(Telnyx::AddressListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::AddressListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::AddressListParams::Filter::OrHash,
          page: Telnyx::AddressListParams::Page::OrHash,
          sort: Telnyx::AddressListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[used_as_emergency], filter[street_address][contains],
        # filter[address_book][eq]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
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
            filter: Telnyx::AddressListParams::Filter,
            page: Telnyx::AddressListParams::Page,
            sort: Telnyx::AddressListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AddressListParams::Filter, Telnyx::Internal::AnyHash)
          end

        sig do
          returns(T.nilable(Telnyx::AddressListParams::Filter::AddressBook))
        end
        attr_reader :address_book

        sig do
          params(
            address_book: Telnyx::AddressListParams::Filter::AddressBook::OrHash
          ).void
        end
        attr_writer :address_book

        # If present, addresses with <code>customer_reference</code> containing the given
        # value will be returned. Matching is not case-sensitive.
        sig do
          returns(
            T.nilable(
              T.any(
                String,
                Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1
              )
            )
          )
        end
        attr_reader :customer_reference

        sig do
          params(
            customer_reference:
              T.any(
                String,
                Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1::OrHash
              )
          ).void
        end
        attr_writer :customer_reference

        sig do
          returns(T.nilable(Telnyx::AddressListParams::Filter::StreetAddress))
        end
        attr_reader :street_address

        sig do
          params(
            street_address:
              Telnyx::AddressListParams::Filter::StreetAddress::OrHash
          ).void
        end
        attr_writer :street_address

        # If set as 'true', only addresses used as the emergency address for at least one
        # active phone-number will be returned. When set to 'false', the opposite happens:
        # only addresses not used as the emergency address from phone-numbers will be
        # returned.
        sig { returns(T.nilable(String)) }
        attr_reader :used_as_emergency

        sig { params(used_as_emergency: String).void }
        attr_writer :used_as_emergency

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[customer_reference][eq], filter[customer_reference][contains],
        # filter[used_as_emergency], filter[street_address][contains],
        # filter[address_book][eq]
        sig do
          params(
            address_book:
              Telnyx::AddressListParams::Filter::AddressBook::OrHash,
            customer_reference:
              T.any(
                String,
                Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1::OrHash
              ),
            street_address:
              Telnyx::AddressListParams::Filter::StreetAddress::OrHash,
            used_as_emergency: String
          ).returns(T.attached_class)
        end
        def self.new(
          address_book: nil,
          # If present, addresses with <code>customer_reference</code> containing the given
          # value will be returned. Matching is not case-sensitive.
          customer_reference: nil,
          street_address: nil,
          # If set as 'true', only addresses used as the emergency address for at least one
          # active phone-number will be returned. When set to 'false', the opposite happens:
          # only addresses not used as the emergency address from phone-numbers will be
          # returned.
          used_as_emergency: nil
        )
        end

        sig do
          override.returns(
            {
              address_book: Telnyx::AddressListParams::Filter::AddressBook,
              customer_reference:
                T.any(
                  String,
                  Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1
                ),
              street_address: Telnyx::AddressListParams::Filter::StreetAddress,
              used_as_emergency: String
            }
          )
        end
        def to_hash
        end

        class AddressBook < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AddressListParams::Filter::AddressBook,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, only returns results with the <code>address_book</code> flag equal
          # to the given value.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # If present, only returns results with the <code>address_book</code> flag equal
            # to the given value.
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        # If present, addresses with <code>customer_reference</code> containing the given
        # value will be returned. Matching is not case-sensitive.
        module CustomerReference
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                String,
                Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1
              )
            end

          class UnionMember1 < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AddressListParams::Filter::CustomerReference::UnionMember1,
                  Telnyx::Internal::AnyHash
                )
              end

            # Partial match for customer_reference. Matching is not case-sensitive.
            sig { returns(T.nilable(String)) }
            attr_reader :contains

            sig { params(contains: String).void }
            attr_writer :contains

            # Exact match for customer_reference.
            sig { returns(T.nilable(String)) }
            attr_reader :eq

            sig { params(eq: String).void }
            attr_writer :eq

            sig do
              params(contains: String, eq: String).returns(T.attached_class)
            end
            def self.new(
              # Partial match for customer_reference. Matching is not case-sensitive.
              contains: nil,
              # Exact match for customer_reference.
              eq: nil
            )
            end

            sig { override.returns({ contains: String, eq: String }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::AddressListParams::Filter::CustomerReference::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class StreetAddress < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AddressListParams::Filter::StreetAddress,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, addresses with <code>street_address</code> containing the given
          # value will be returned. Matching is not case-sensitive. Requires at least three
          # characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          sig { params(contains: String).returns(T.attached_class) }
          def self.new(
            # If present, addresses with <code>street_address</code> containing the given
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

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AddressListParams::Page, Telnyx::Internal::AnyHash)
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
          T.type_alias { T.all(Symbol, Telnyx::AddressListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::AddressListParams::Sort::TaggedSymbol)
        FIRST_NAME =
          T.let(:first_name, Telnyx::AddressListParams::Sort::TaggedSymbol)
        LAST_NAME =
          T.let(:last_name, Telnyx::AddressListParams::Sort::TaggedSymbol)
        BUSINESS_NAME =
          T.let(:business_name, Telnyx::AddressListParams::Sort::TaggedSymbol)
        STREET_ADDRESS =
          T.let(:street_address, Telnyx::AddressListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AddressListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
