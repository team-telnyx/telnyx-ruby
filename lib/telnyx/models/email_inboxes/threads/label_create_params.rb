# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      module Threads
        # @see Telnyx::Resources::EmailInboxes::Threads::Labels#create
        class LabelCreateParams < Telnyx::Models::EmailInboxes::Messages::LabelMutationRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute inbox_id
          #
          #   @return [String]
          required :inbox_id, String

          # @!attribute thread_id
          #
          #   @return [String]
          required :thread_id, String

          # @!method initialize(inbox_id:, thread_id:, request_options: {})
          #   @param inbox_id [String]
          #   @param thread_id [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
