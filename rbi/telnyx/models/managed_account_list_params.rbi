# typed: strong

module Telnyx
  module Models
    class ManagedAccountListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::ManagedAccountListParams, Telnyx::Internal::AnyHash)
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[email][contains], filter[email][eq], filter[organization_name][contains],
      # filter[organization_name][eq]
      sig { returns(T.nilable(Telnyx::ManagedAccountListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::ManagedAccountListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Specifies if cancelled accounts should be included in the results.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_cancelled_accounts

      sig { params(include_cancelled_accounts: T::Boolean).void }
      attr_writer :include_cancelled_accounts

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
      #     <code>email</code>: sorts the result by the
      #     <code>email</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-email</code>: sorts the result by the
      #     <code>email</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      sig do
        returns(T.nilable(Telnyx::ManagedAccountListParams::Sort::OrSymbol))
      end
      attr_reader :sort

      sig do
        params(sort: Telnyx::ManagedAccountListParams::Sort::OrSymbol).void
      end
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::ManagedAccountListParams::Filter::OrHash,
          include_cancelled_accounts: T::Boolean,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::ManagedAccountListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[email][contains], filter[email][eq], filter[organization_name][contains],
        # filter[organization_name][eq]
        filter: nil,
        # Specifies if cancelled accounts should be included in the results.
        include_cancelled_accounts: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>email</code>: sorts the result by the
        #     <code>email</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-email</code>: sorts the result by the
        #     <code>email</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::ManagedAccountListParams::Filter,
            include_cancelled_accounts: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::ManagedAccountListParams::Sort::OrSymbol,
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
              Telnyx::ManagedAccountListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::ManagedAccountListParams::Filter::Email))
        end
        attr_reader :email

        sig do
          params(
            email: Telnyx::ManagedAccountListParams::Filter::Email::OrHash
          ).void
        end
        attr_writer :email

        sig do
          returns(
            T.nilable(
              Telnyx::ManagedAccountListParams::Filter::OrganizationName
            )
          )
        end
        attr_reader :organization_name

        sig do
          params(
            organization_name:
              Telnyx::ManagedAccountListParams::Filter::OrganizationName::OrHash
          ).void
        end
        attr_writer :organization_name

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[email][contains], filter[email][eq], filter[organization_name][contains],
        # filter[organization_name][eq]
        sig do
          params(
            email: Telnyx::ManagedAccountListParams::Filter::Email::OrHash,
            organization_name:
              Telnyx::ManagedAccountListParams::Filter::OrganizationName::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email: nil, organization_name: nil)
        end

        sig do
          override.returns(
            {
              email: Telnyx::ManagedAccountListParams::Filter::Email,
              organization_name:
                Telnyx::ManagedAccountListParams::Filter::OrganizationName
            }
          )
        end
        def to_hash
        end

        class Email < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ManagedAccountListParams::Filter::Email,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, email containing the given value will be returned. Matching is not
          # case-sensitive. Requires at least three characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # If present, only returns results with the <code>email</code> matching exactly
          # the value given.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(contains: String, eq: String).returns(T.attached_class) }
          def self.new(
            # If present, email containing the given value will be returned. Matching is not
            # case-sensitive. Requires at least three characters.
            contains: nil,
            # If present, only returns results with the <code>email</code> matching exactly
            # the value given.
            eq: nil
          )
          end

          sig { override.returns({ contains: String, eq: String }) }
          def to_hash
          end
        end

        class OrganizationName < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ManagedAccountListParams::Filter::OrganizationName,
                Telnyx::Internal::AnyHash
              )
            end

          # If present, only returns results with the <code>organization_name</code>
          # containing the given value. Matching is not case-sensitive. Requires at least
          # three characters.
          sig { returns(T.nilable(String)) }
          attr_reader :contains

          sig { params(contains: String).void }
          attr_writer :contains

          # If present, only returns results with the <code>organization_name</code>
          # matching exactly the value given.
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(contains: String, eq: String).returns(T.attached_class) }
          def self.new(
            # If present, only returns results with the <code>organization_name</code>
            # containing the given value. Matching is not case-sensitive. Requires at least
            # three characters.
            contains: nil,
            # If present, only returns results with the <code>organization_name</code>
            # matching exactly the value given.
            eq: nil
          )
          end

          sig { override.returns({ contains: String, eq: String }) }
          def to_hash
          end
        end
      end

      # Specifies the sort order for results. By default sorting direction is ascending.
      # To have the results sorted in descending order add the <code> -</code>
      # prefix.<br/><br/> That is: <ul>
      #
      #   <li>
      #     <code>email</code>: sorts the result by the
      #     <code>email</code> field in ascending order.
      #   </li>
      #
      #   <li>
      #     <code>-email</code>: sorts the result by the
      #     <code>email</code> field in descending order.
      #   </li>
      # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::ManagedAccountListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::ManagedAccountListParams::Sort::TaggedSymbol
          )
        EMAIL =
          T.let(:email, Telnyx::ManagedAccountListParams::Sort::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::ManagedAccountListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
