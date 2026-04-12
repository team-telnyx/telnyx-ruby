# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_upload
    class VoiceCloneCreateFromUploadParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute upload_params
      #
      #   @return [Object]
      required :upload_params, Telnyx::Internal::Type::Unknown

      # @!method initialize(upload_params:, request_options: {})
      #   @param upload_params [Object]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
