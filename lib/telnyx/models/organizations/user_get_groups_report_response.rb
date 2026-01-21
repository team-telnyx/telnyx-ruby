# frozen_string_literal: true

module Telnyx
  module Models
    module Organizations
      # @see Telnyx::Resources::Organizations::Users#get_groups_report
      class UserGetGroupsReportResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the specific resource.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [String]
          required :created_at, String

          # @!attribute email
          #   The email address of the user.
          #
          #   @return [String]
          required :email, String

          # @!attribute groups
          #   The groups the user belongs to.
          #
          #   @return [Array<Telnyx::Models::Organizations::UserGroupReference>]
          required :groups, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Organizations::UserGroupReference] }

          # @!attribute record_type
          #   Identifies the type of the resource. Can be 'organization_owner' or
          #   'organization_sub_user'.
          #
          #   @return [String]
          required :record_type, String

          # @!attribute user_status
          #   The status of the account.
          #
          #   @return [Symbol, Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus]
          required :user_status,
                   enum: -> { Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus }

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

          # @!method initialize(id:, created_at:, email:, groups:, record_type:, user_status:, last_sign_in_at: nil, organization_user_bypasses_sso: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data} for more
          #   details.
          #
          #   An organization user with their group memberships always included.
          #
          #   @param id [String] Identifies the specific resource.
          #
          #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param email [String] The email address of the user.
          #
          #   @param groups [Array<Telnyx::Models::Organizations::UserGroupReference>] The groups the user belongs to.
          #
          #   @param record_type [String] Identifies the type of the resource. Can be 'organization_owner' or 'organizatio
          #
          #   @param user_status [Symbol, Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data::UserStatus] The status of the account.
          #
          #   @param last_sign_in_at [String, nil] ISO 8601 formatted date indicating when the resource last signed into the portal
          #
          #   @param organization_user_bypasses_sso [Boolean] Indicates whether this user is allowed to bypass SSO and use password authentica

          # The status of the account.
          #
          # @see Telnyx::Models::Organizations::UserGetGroupsReportResponse::Data#user_status
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
