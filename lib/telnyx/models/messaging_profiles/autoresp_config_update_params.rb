# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::AutorespConfigs#update
      class AutorespConfigUpdateParams < Telnyx::Models::MessagingProfiles::AutoRespConfigCreate
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute profile_id
        #
        #   @return [String]
        required :profile_id, String

        # @!attribute autoresp_cfg_id
        #
        #   @return [String]
        required :autoresp_cfg_id, String

        # @!method initialize(profile_id:, autoresp_cfg_id:, request_options: {})
        #   @param profile_id [String]
        #   @param autoresp_cfg_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
