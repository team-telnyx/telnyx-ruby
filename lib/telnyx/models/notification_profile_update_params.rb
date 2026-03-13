# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationProfiles#update
    class NotificationProfileUpdateParams < Telnyx::Models::NotificationProfile
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute notification_profile_id
      #
      #   @return [String]
      required :notification_profile_id, String

      # @!method initialize(notification_profile_id:, request_options: {})
      #   @param notification_profile_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
