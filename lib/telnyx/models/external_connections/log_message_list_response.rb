# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::LogMessages#list
      class LogMessageListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #
        #   @return [String]
        required :code, String

        # @!attribute title
        #
        #   @return [String]
        required :title, String

        # @!attribute detail
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute meta
        #
        #   @return [Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta, nil]
        optional :meta, -> { Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta }

        # @!attribute source
        #
        #   @return [Telnyx::Models::ExternalConnections::LogMessageListResponse::Source, nil]
        optional :source, -> { Telnyx::Models::ExternalConnections::LogMessageListResponse::Source }

        # @!method initialize(code:, title:, detail: nil, meta: nil, source: nil)
        #   @param code [String]
        #   @param title [String]
        #   @param detail [String]
        #   @param meta [Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta]
        #   @param source [Telnyx::Models::ExternalConnections::LogMessageListResponse::Source]

        # @see Telnyx::Models::ExternalConnections::LogMessageListResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute external_connection_id
          #   The external connection the log message is associated with, if any.
          #
          #   @return [String, nil]
          optional :external_connection_id, String

          # @!attribute telephone_number
          #   The telephone number the log message is associated with, if any.
          #
          #   @return [String, nil]
          optional :telephone_number, String

          # @!attribute ticket_id
          #   The ticket ID for an operation that generated the log message, if any.
          #
          #   @return [String, nil]
          optional :ticket_id, String

          # @!method initialize(external_connection_id: nil, telephone_number: nil, ticket_id: nil)
          #   @param external_connection_id [String] The external connection the log message is associated with, if any.
          #
          #   @param telephone_number [String] The telephone number the log message is associated with, if any.
          #
          #   @param ticket_id [String] The ticket ID for an operation that generated the log message, if any.
        end

        # @see Telnyx::Models::ExternalConnections::LogMessageListResponse#source
        class Source < Telnyx::Internal::Type::BaseModel
          # @!attribute pointer
          #   JSON pointer (RFC6901) to the offending entity.
          #
          #   @return [String, nil]
          optional :pointer, String

          # @!method initialize(pointer: nil)
          #   @param pointer [String] JSON pointer (RFC6901) to the offending entity.
        end
      end
    end
  end
end
