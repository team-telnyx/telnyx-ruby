# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#retrieve
    class MessagingProfileRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messaging_profile_id
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!method initialize(messaging_profile_id:, request_options: {})
      #   @param messaging_profile_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
