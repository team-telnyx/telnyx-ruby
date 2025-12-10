# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::LogMessages#list
      class LogMessageListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute log_messages
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage>, nil]
        optional :log_messages,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta, nil]
        optional :meta, -> { Telnyx::ExternalVoiceIntegrationsPaginationMeta }

        # @!method initialize(log_messages: nil, meta: nil)
        #   @param log_messages [Array<Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage>]
        #   @param meta [Telnyx::Models::ExternalVoiceIntegrationsPaginationMeta]

        class LogMessage < Telnyx::Internal::Type::BaseModel
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
          #   @return [Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Meta, nil]
          optional :meta, -> { Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Meta }

          # @!attribute source
          #
          #   @return [Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Source, nil]
          optional :source, -> { Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Source }

          # @!method initialize(code:, title:, detail: nil, meta: nil, source: nil)
          #   @param code [String]
          #   @param title [String]
          #   @param detail [String]
          #   @param meta [Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Meta]
          #   @param source [Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage::Source]

          # @see Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage#meta
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

          # @see Telnyx::Models::ExternalConnections::LogMessageListResponse::LogMessage#source
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
end
