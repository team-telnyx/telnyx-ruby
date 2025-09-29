# typed: strong

module Telnyx
  module Resources
    class Recordings
      class Actions
        # Permanently deletes a list of call recordings.
        sig do
          params(
            ids: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # List of call recording IDs to delete.
          ids:,
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
