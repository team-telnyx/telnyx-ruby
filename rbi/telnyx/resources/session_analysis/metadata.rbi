# typed: strong

module Telnyx
  module Resources
    class SessionAnalysis
      # Analyze voice AI sessions, costs, and event hierarchies across Telnyx products.
      class Metadata
        # Returns all available record types and supported query parameters for session
        # analysis.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::Models::SessionAnalysis::MetadataRetrieveResponse
          )
        end
        def retrieve(request_options: {})
        end

        # Returns detailed metadata for a specific record type, including relationships
        # and examples.
        sig do
          params(
            record_type: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::SessionAnalysis::MetadataRetrieveRecordTypeResponse
          )
        end
        def retrieve_record_type(
          # The record type identifier (e.g. "call-control").
          record_type,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
