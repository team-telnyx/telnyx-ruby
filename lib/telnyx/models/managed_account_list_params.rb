# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ManagedAccounts#list
    class ManagedAccountListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[email][contains], filter[email][eq], filter[organization_name][contains],
      #   filter[organization_name][eq]
      #
      #   @return [Telnyx::Models::ManagedAccountListParams::Filter, nil]
      optional :filter, -> { Telnyx::ManagedAccountListParams::Filter }

      # @!attribute include_cancelled_accounts
      #   Specifies if cancelled accounts should be included in the results.
      #
      #   @return [Boolean, nil]
      optional :include_cancelled_accounts, Telnyx::Internal::Type::Boolean

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Specifies the sort order for results. By default sorting direction is ascending.
      #   To have the results sorted in descending order add the <code> -</code>
      #   prefix.<br/><br/> That is: <ul>
      #
      #     <li>
      #       <code>email</code>: sorts the result by the
      #       <code>email</code> field in ascending order.
      #     </li>
      #
      #     <li>
      #       <code>-email</code>: sorts the result by the
      #       <code>email</code> field in descending order.
      #     </li>
      #   </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
      #
      #   @return [Symbol, Telnyx::Models::ManagedAccountListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::ManagedAccountListParams::Sort }

      # @!method initialize(filter: nil, include_cancelled_accounts: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ManagedAccountListParams} for more details.
      #
      #   @param filter [Telnyx::Models::ManagedAccountListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[email]cont
      #
      #   @param include_cancelled_accounts [Boolean] Specifies if cancelled accounts should be included in the results.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Symbol, Telnyx::Models::ManagedAccountListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [Telnyx::Models::ManagedAccountListParams::Filter::Email, nil]
        optional :email, -> { Telnyx::ManagedAccountListParams::Filter::Email }

        # @!attribute organization_name
        #
        #   @return [Telnyx::Models::ManagedAccountListParams::Filter::OrganizationName, nil]
        optional :organization_name, -> { Telnyx::ManagedAccountListParams::Filter::OrganizationName }

        # @!method initialize(email: nil, organization_name: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[email][contains], filter[email][eq], filter[organization_name][contains],
        #   filter[organization_name][eq]
        #
        #   @param email [Telnyx::Models::ManagedAccountListParams::Filter::Email]
        #   @param organization_name [Telnyx::Models::ManagedAccountListParams::Filter::OrganizationName]

        # @see Telnyx::Models::ManagedAccountListParams::Filter#email
        class Email < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, email containing the given value will be returned. Matching is not
          #   case-sensitive. Requires at least three characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute eq
          #   If present, only returns results with the <code>email</code> matching exactly
          #   the value given.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(contains: nil, eq: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ManagedAccountListParams::Filter::Email} for more details.
          #
          #   @param contains [String] If present, email containing the given value will be returned. Matching is not c
          #
          #   @param eq [String] If present, only returns results with the <code>email</code> matching exactly th
        end

        # @see Telnyx::Models::ManagedAccountListParams::Filter#organization_name
        class OrganizationName < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   If present, only returns results with the <code>organization_name</code>
          #   containing the given value. Matching is not case-sensitive. Requires at least
          #   three characters.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!attribute eq
          #   If present, only returns results with the <code>organization_name</code>
          #   matching exactly the value given.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(contains: nil, eq: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ManagedAccountListParams::Filter::OrganizationName} for more
          #   details.
          #
          #   @param contains [String] If present, only returns results with the <code>organization_name</code> contain
          #
          #   @param eq [String] If present, only returns results with the <code>organization_name</code> matchin
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

        CREATED_AT = :created_at
        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
