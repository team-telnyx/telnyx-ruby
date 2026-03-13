# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#update
    class SimCardUpdateParams < Telnyx::Models::SimCard
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute sim_card_id
      #
      #   @return [String]
      required :sim_card_id, String

      # @!method initialize(sim_card_id:, request_options: {})
      #   @param sim_card_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
