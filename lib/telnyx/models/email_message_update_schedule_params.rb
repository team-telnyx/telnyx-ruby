# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#update_schedule
    class EmailMessageUpdateScheduleParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute email_id
      #
      #   @return [String]
      required :email_id, String

      # @!attribute scheduled_at
      #   New ISO 8601 delivery time. Must be strictly in the future.
      #
      #   @return [Time]
      required :scheduled_at, Time

      # @!method initialize(email_id:, scheduled_at:, request_options: {})
      #   @param email_id [String]
      #
      #   @param scheduled_at [Time] New ISO 8601 delivery time. Must be strictly in the future.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
