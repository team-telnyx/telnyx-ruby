# typed: strong

module Telnyx
  module Resources
    class Storage
      class Migrations
        # Migrate data from an external provider into Telnyx Cloud Storage
        class Actions
          # Stops the specified in-progress storage migration and returns the updated
          # migration.
          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::Storage::Migrations::ActionStopResponse)
          end
          def stop(
            # Unique identifier for the data migration.
            id,
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
end
