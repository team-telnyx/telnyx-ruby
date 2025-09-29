# typed: strong

module Telnyx
  module Resources
    class PortingOrders
      class ActivationJobs
        # Returns a porting activation job.
        sig do
          params(
            activation_job_id: String,
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Models::PortingOrders::ActivationJobRetrieveResponse
          )
        end
        def retrieve(
          # Activation Job Identifier
          activation_job_id,
          # Porting Order id
          id:,
          request_options: {}
        )
        end

        # Updates the activation time of a porting activation job.
        sig do
          params(
            activation_job_id: String,
            id: String,
            activate_at: Time,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActivationJobUpdateResponse)
        end
        def update(
          # Path param: Activation Job Identifier
          activation_job_id,
          # Path param: Porting Order id
          id:,
          # Body param: The desired activation time. The activation time should be between
          # any of the activation windows.
          activate_at: nil,
          request_options: {}
        )
        end

        # Returns a list of your porting activation jobs.
        sig do
          params(
            id: String,
            page: Telnyx::PortingOrders::ActivationJobListParams::Page::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PortingOrders::ActivationJobListResponse)
        end
        def list(
          # Porting Order id
          id,
          # Consolidated page parameter (deepObject style). Originally: page[size],
          # page[number]
          page: nil,
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
