# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#retrieve
      class UserRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Organizations::UserRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Organizations::UserRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Organizations::UserRetrieveResponse::Data]

        # @see Telnyx::Models::Organizations::UserRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the specific resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute email
          #   The email address of the user.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute groups
          #   The groups the user belongs to. Only included when include_groups parameter is
          #   true.
          #
          #   @return [Array<Telnyx::Models::Organizations::UserGroupReference>, nil]
          optional :groups, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Organizations::UserGroupReference] }

          # @!attribute last_sign_in_at
          #   ISO 8601 formatted date indicating when the resource last signed into the
          #   portal. Null if the user has never signed in.
          #
          #   @return [String, nil]
          optional :last_sign_in_at, String, nil?: true

          # @!attribute organization_user_bypasses_sso
          #   Indicates whether this user is allowed to bypass SSO and use password
          #   authentication.
          #
          #   @return [Boolean, nil]
          optional :organization_user_bypasses_sso, Telnyx::Internal::Type::Boolean

          # @!attribute record_type
          #   Identifies the type of the resource. Can be 'organization_owner' or
          #   'organization_sub_user'.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute user_status
          #   The status of the account.
          #
          #   @return [Symbol, Telnyx::Models::Organizations::UserRetrieveResponse::Data::UserStatus, nil]
          optional :user_status, enum: -> { Telnyx::Models::Organizations::UserRetrieveResponse::Data::UserStatus }

          # @!method initialize(id: nil, created_at: nil, email: nil, groups: nil, last_sign_in_at: nil, organization_user_bypasses_sso: nil, record_type: nil, user_status: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Organizations::UserRetrieveResponse::Data} for more details.
          #
          #   @param id [String] Identifies the specific resource.
          #
          #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param email [String] The email address of the user.
          #
          #   @param groups [Array<Telnyx::Models::Organizations::UserGroupReference>] The groups the user belongs to. Only included when include_groups parameter is t
          #
          #   @param last_sign_in_at [String, nil] ISO 8601 formatted date indicating when the resource last signed into the portal
          #
          #   @param organization_user_bypasses_sso [Boolean] Indicates whether this user is allowed to bypass SSO and use password authentica
          #
          #   @param record_type [String] Identifies the type of the resource. Can be 'organization_owner' or 'organizatio
          #
          #   @param user_status [Symbol, Telnyx::Models::Organizations::UserRetrieveResponse::Data::UserStatus] The status of the account.

          # The status of the account.
          #
          # @see Telnyx::Models::Organizations::UserRetrieveResponse::Data#user_status
          module UserStatus
            extend Telnyx::Internal::Type::Enum

            ENABLED = :enabled
            DISABLED = :disabled
            BLOCKED = :blocked

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
