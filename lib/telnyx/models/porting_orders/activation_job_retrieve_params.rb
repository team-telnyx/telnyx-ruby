# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActivationJobs#retrieve
      class ActivationJobRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute activation_job_id
        #
        #   @return [String]
        required :activation_job_id, String

        # @!method initialize(id:, activation_job_id:, request_options: {})
        #   @param id [String]
        #   @param activation_job_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
