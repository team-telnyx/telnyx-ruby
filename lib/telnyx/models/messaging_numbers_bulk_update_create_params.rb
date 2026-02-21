# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingNumbersBulkUpdates#create
    class MessagingNumbersBulkUpdateCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messaging_profile_id
      #   Configure the messaging profile these phone numbers are assigned to:
      #
      #   - Set this field to `""` to unassign each number from their respective messaging
      #     profile
      #   - Set this field to a quoted UUID of a messaging profile to assign these numbers
      #     to that messaging profile
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute numbers
      #   The list of phone numbers to update.
      #
      #   @return [Array<String>]
      required :numbers, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute assign_only
      #   If true, only assign numbers to the profile without changing other settings.
      #
      #   @return [Boolean, nil]
      optional :assign_only, Telnyx::Internal::Type::Boolean

      # @!method initialize(messaging_profile_id:, numbers:, assign_only: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingNumbersBulkUpdateCreateParams} for more details.
      #
      #   @param messaging_profile_id [String] Configure the messaging profile these phone numbers are assigned to:
      #
      #   @param numbers [Array<String>] The list of phone numbers to update.
      #
      #   @param assign_only [Boolean] If true, only assign numbers to the profile without changing other settings.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
