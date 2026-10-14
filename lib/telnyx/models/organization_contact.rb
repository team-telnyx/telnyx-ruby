# frozen_string_literal: true

module Telnyx
  module Models
    class OrganizationContact < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #   The email address of the main person Telnyx should contact about this account.
      #   For a call center (BPO) account this is the email you will verify later, so use
      #   a mailbox you can access.
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   The first name of the main person Telnyx should contact about this account.
      #
      #   @return [String]
      required :first_name, String

      # @!attribute job_title
      #   The job title of the main person Telnyx should contact about this account.
      #
      #   @return [String]
      required :job_title, String

      # @!attribute last_name
      #   The last name of the main person Telnyx should contact about this account.
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone_number
      #   The phone number of the main contact, in E.164 format, for example +12125551234.
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(email:, first_name:, job_title:, last_name:, phone_number:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OrganizationContact} for more details.
      #
      #   @param email [String] The email address of the main person Telnyx should contact about this account. F
      #
      #   @param first_name [String] The first name of the main person Telnyx should contact about this account.
      #
      #   @param job_title [String] The job title of the main person Telnyx should contact about this account.
      #
      #   @param last_name [String] The last name of the main person Telnyx should contact about this account.
      #
      #   @param phone_number [String] The phone number of the main contact, in E.164 format, for example +12125551234.
    end
  end
end
