# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#retrieve
    class SimCardGroupRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute include_iccids
      #   It includes a list of associated ICCIDs.
      #
      #   @return [Boolean, nil]
      optional :include_iccids, Telnyx::Internal::Type::Boolean

      # @!method initialize(id:, include_iccids: nil, request_options: {})
      #   @param id [String]
      #
      #   @param include_iccids [Boolean] It includes a list of associated ICCIDs.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
