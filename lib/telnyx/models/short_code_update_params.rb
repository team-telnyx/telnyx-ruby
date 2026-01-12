# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ShortCodes#update
    class ShortCodeUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   @return [String]
      required :messaging_profile_id, String

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(messaging_profile_id:, tags: nil, request_options: {})
      #   @param messaging_profile_id [String] Unique identifier for a messaging profile.
      #
      #   @param tags [Array<String>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
