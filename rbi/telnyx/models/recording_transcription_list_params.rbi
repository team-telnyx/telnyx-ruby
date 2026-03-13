# typed: strong

module Telnyx
  module Models
    class RecordingTranscriptionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::RecordingTranscriptionListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Filter recording transcriptions by various attributes.
      sig do
        returns(T.nilable(Telnyx::RecordingTranscriptionListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::RecordingTranscriptionListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::RecordingTranscriptionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter recording transcriptions by various attributes.
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::RecordingTranscriptionListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RecordingTranscriptionListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt
            )
          )
        end
        attr_reader :created_at

        sig do
          params(
            created_at:
              Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt::OrHash
          ).void
        end
        attr_writer :created_at

        # If present, transcriptions will be filtered to those associated with the given
        # recording.
        sig { returns(T.nilable(String)) }
        attr_reader :recording_id

        sig { params(recording_id: String).void }
        attr_writer :recording_id

        # Filter recording transcriptions by various attributes.
        sig do
          params(
            created_at:
              Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt::OrHash,
            recording_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at: nil,
          # If present, transcriptions will be filtered to those associated with the given
          # recording.
          recording_id: nil
        )
        end

        sig do
          override.returns(
            {
              created_at:
                Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt,
              recording_id: String
            }
          )
        end
        def to_hash
        end

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt,
                Telnyx::Internal::AnyHash
              )
            end

          # Returns only transcriptions created later than or at given ISO 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :gte

          sig { params(gte: String).void }
          attr_writer :gte

          # Returns only transcriptions created earlier than or at given ISO 8601 datetime.
          sig { returns(T.nilable(String)) }
          attr_reader :lte

          sig { params(lte: String).void }
          attr_writer :lte

          sig { params(gte: String, lte: String).returns(T.attached_class) }
          def self.new(
            # Returns only transcriptions created later than or at given ISO 8601 datetime.
            gte: nil,
            # Returns only transcriptions created earlier than or at given ISO 8601 datetime.
            lte: nil
          )
          end

          sig { override.returns({ gte: String, lte: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
