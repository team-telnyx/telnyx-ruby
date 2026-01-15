# typed: strong

module Telnyx
  module Models
    module Organizations
      class UserListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Organizations::UserListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by email address (partial match)
        sig { returns(T.nilable(String)) }
        attr_reader :filter_email

        sig { params(filter_email: String).void }
        attr_writer :filter_email

        # Filter by user status
        sig do
          returns(
            T.nilable(
              Telnyx::Organizations::UserListParams::FilterUserStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_user_status

        sig do
          params(
            filter_user_status:
              Telnyx::Organizations::UserListParams::FilterUserStatus::OrSymbol
          ).void
        end
        attr_writer :filter_user_status

        # When set to true, includes the groups array for each user in the response. The
        # groups array contains objects with id and name for each group the user belongs
        # to.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_groups

        sig { params(include_groups: T::Boolean).void }
        attr_writer :include_groups

        # The page number to load
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # The size of the page
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_email: String,
            filter_user_status:
              Telnyx::Organizations::UserListParams::FilterUserStatus::OrSymbol,
            include_groups: T::Boolean,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by email address (partial match)
          filter_email: nil,
          # Filter by user status
          filter_user_status: nil,
          # When set to true, includes the groups array for each user in the response. The
          # groups array contains objects with id and name for each group the user belongs
          # to.
          include_groups: nil,
          # The page number to load
          page_number: nil,
          # The size of the page
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_email: String,
              filter_user_status:
                Telnyx::Organizations::UserListParams::FilterUserStatus::OrSymbol,
              include_groups: T::Boolean,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by user status
        module FilterUserStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Organizations::UserListParams::FilterUserStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENABLED =
            T.let(
              :enabled,
              Telnyx::Organizations::UserListParams::FilterUserStatus::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Organizations::UserListParams::FilterUserStatus::TaggedSymbol
            )
          BLOCKED =
            T.let(
              :blocked,
              Telnyx::Organizations::UserListParams::FilterUserStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Organizations::UserListParams::FilterUserStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
