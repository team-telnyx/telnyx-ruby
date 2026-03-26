# frozen_string_literal: true

module Telnyx
  module Models
    class OrganizationContact < Telnyx::Internal::Type::BaseModel
      # @!attribute email
      #   Contact's email address
      #
      #   @return [String]
      required :email, String

      # @!attribute first_name
      #   Contact's first name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute job_title
      #   Contact's job title (required)
      #
      #   @return [String]
      required :job_title, String

      # @!attribute last_name
      #   Contact's last name
      #
      #   @return [String]
      required :last_name, String

      # @!attribute phone
      #   Contact's phone number in E.164 format
      #
      #   @return [String]
      required :phone, String

      # @!method initialize(email:, first_name:, job_title:, last_name:, phone:)
      #   Organization contact information. Note: the response returns this object with
      #   the phone field as 'phone' (not 'phone_number').
      #
      #   @param email [String] Contact's email address
      #
      #   @param first_name [String] Contact's first name
      #
      #   @param job_title [String] Contact's job title (required)
      #
      #   @param last_name [String] Contact's last name
      #
      #   @param phone [String] Contact's phone number in E.164 format
    end
  end
end
