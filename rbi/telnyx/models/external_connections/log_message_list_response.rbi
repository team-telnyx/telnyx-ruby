# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class LogMessageListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::LogMessageListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :code

        sig { returns(String) }
        attr_accessor :title

        sig { returns(T.nilable(String)) }
        attr_reader :detail

        sig { params(detail: String).void }
        attr_writer :detail

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta
            )
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Source
            )
          )
        end
        attr_reader :source

        sig do
          params(
            source:
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Source::OrHash
          ).void
        end
        attr_writer :source

        sig do
          params(
            code: String,
            title: String,
            detail: String,
            meta:
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta::OrHash,
            source:
              Telnyx::Models::ExternalConnections::LogMessageListResponse::Source::OrHash
          ).returns(T.attached_class)
        end
        def self.new(code:, title:, detail: nil, meta: nil, source: nil)
        end

        sig do
          override.returns(
            {
              code: String,
              title: String,
              detail: String,
              meta:
                Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta,
              source:
                Telnyx::Models::ExternalConnections::LogMessageListResponse::Source
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalConnections::LogMessageListResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          # The external connection the log message is associated with, if any.
          sig { returns(T.nilable(String)) }
          attr_reader :external_connection_id

          sig { params(external_connection_id: String).void }
          attr_writer :external_connection_id

          # The telephone number the log message is associated with, if any.
          sig { returns(T.nilable(String)) }
          attr_reader :telephone_number

          sig { params(telephone_number: String).void }
          attr_writer :telephone_number

          # The ticket ID for an operation that generated the log message, if any.
          sig { returns(T.nilable(String)) }
          attr_reader :ticket_id

          sig { params(ticket_id: String).void }
          attr_writer :ticket_id

          sig do
            params(
              external_connection_id: String,
              telephone_number: String,
              ticket_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The external connection the log message is associated with, if any.
            external_connection_id: nil,
            # The telephone number the log message is associated with, if any.
            telephone_number: nil,
            # The ticket ID for an operation that generated the log message, if any.
            ticket_id: nil
          )
          end

          sig do
            override.returns(
              {
                external_connection_id: String,
                telephone_number: String,
                ticket_id: String
              }
            )
          end
          def to_hash
          end
        end

        class Source < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalConnections::LogMessageListResponse::Source,
                Telnyx::Internal::AnyHash
              )
            end

          # JSON pointer (RFC6901) to the offending entity.
          sig { returns(T.nilable(String)) }
          attr_reader :pointer

          sig { params(pointer: String).void }
          attr_writer :pointer

          sig { params(pointer: String).returns(T.attached_class) }
          def self.new(
            # JSON pointer (RFC6901) to the offending entity.
            pointer: nil
          )
          end

          sig { override.returns({ pointer: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
