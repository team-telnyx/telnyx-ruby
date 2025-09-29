# typed: strong

module Telnyx
  module Models
    class DetailRecordListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DetailRecordListParams, Telnyx::Internal::AnyHash)
        end

      # Filter records on a given record attribute and value. <br/>Example:
      # filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
      sig { returns(T.nilable(Telnyx::DetailRecordListParams::Filter)) }
      attr_reader :filter

      sig do
        params(filter: Telnyx::DetailRecordListParams::Filter::OrHash).void
      end
      attr_writer :filter

      # Consolidated page parameter (deepObject style). Originally: page[number],
      # page[size]
      sig { returns(T.nilable(Telnyx::DetailRecordListParams::Page)) }
      attr_reader :page

      sig { params(page: Telnyx::DetailRecordListParams::Page::OrHash).void }
      attr_writer :page

      # Specifies the sort order for results. <br/>Example: sort=-created_at
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :sort

      sig { params(sort: T::Array[String]).void }
      attr_writer :sort

      sig do
        params(
          filter: Telnyx::DetailRecordListParams::Filter::OrHash,
          page: Telnyx::DetailRecordListParams::Page::OrHash,
          sort: T::Array[String],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter records on a given record attribute and value. <br/>Example:
        # filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        # Specifies the sort order for results. <br/>Example: sort=-created_at
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::DetailRecordListParams::Filter,
            page: Telnyx::DetailRecordListParams::Page,
            sort: T::Array[String],
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
              Telnyx::DetailRecordListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by the given record type.
        sig do
          returns(Telnyx::DetailRecordListParams::Filter::RecordType::OrSymbol)
        end
        attr_accessor :record_type

        # Filter by the given user-friendly date range. You can specify one of the
        # following enum values, or a dynamic one using this format: last_N_days.
        sig do
          returns(
            T.nilable(
              Telnyx::DetailRecordListParams::Filter::DateRange::OrSymbol
            )
          )
        end
        attr_reader :date_range

        sig do
          params(
            date_range:
              Telnyx::DetailRecordListParams::Filter::DateRange::OrSymbol
          ).void
        end
        attr_writer :date_range

        # Filter records on a given record attribute and value. <br/>Example:
        # filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
        sig do
          params(
            record_type:
              Telnyx::DetailRecordListParams::Filter::RecordType::OrSymbol,
            date_range:
              Telnyx::DetailRecordListParams::Filter::DateRange::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by the given record type.
          record_type:,
          # Filter by the given user-friendly date range. You can specify one of the
          # following enum values, or a dynamic one using this format: last_N_days.
          date_range: nil
        )
        end

        sig do
          override.returns(
            {
              record_type:
                Telnyx::DetailRecordListParams::Filter::RecordType::OrSymbol,
              date_range:
                Telnyx::DetailRecordListParams::Filter::DateRange::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Filter by the given record type.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::DetailRecordListParams::Filter::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AI_VOICE_ASSISTANT =
            T.let(
              :"ai-voice-assistant",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          AMD =
            T.let(
              :amd,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          CALL_CONTROL =
            T.let(
              :"call-control",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          CONFERENCE =
            T.let(
              :conference,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          CONFERENCE_PARTICIPANT =
            T.let(
              :"conference-participant",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          EMBEDDING =
            T.let(
              :embedding,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          FAX =
            T.let(
              :fax,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          INFERENCE =
            T.let(
              :inference,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          INFERENCE_SPEECH_TO_TEXT =
            T.let(
              :"inference-speech-to-text",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          MEDIA_STORAGE =
            T.let(
              :media_storage,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          MEDIA_STREAMING =
            T.let(
              :"media-streaming",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          MESSAGING =
            T.let(
              :messaging,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          NOISE_SUPPRESSION =
            T.let(
              :"noise-suppression",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          RECORDING =
            T.let(
              :recording,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          SIP_TRUNKING =
            T.let(
              :"sip-trunking",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          SIPREC_CLIENT =
            T.let(
              :"siprec-client",
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          STT =
            T.let(
              :stt,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          TTS =
            T.let(
              :tts,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          VERIFY =
            T.let(
              :verify,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          WEBRTC =
            T.let(
              :webrtc,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )
          WIRELESS =
            T.let(
              :wireless,
              Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DetailRecordListParams::Filter::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Filter by the given user-friendly date range. You can specify one of the
        # following enum values, or a dynamic one using this format: last_N_days.
        module DateRange
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::DetailRecordListParams::Filter::DateRange)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          YESTERDAY =
            T.let(
              :yesterday,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          TODAY =
            T.let(
              :today,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          TOMORROW =
            T.let(
              :tomorrow,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          LAST_WEEK =
            T.let(
              :last_week,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          THIS_WEEK =
            T.let(
              :this_week,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          NEXT_WEEK =
            T.let(
              :next_week,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          LAST_MONTH =
            T.let(
              :last_month,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          THIS_MONTH =
            T.let(
              :this_month,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )
          NEXT_MONTH =
            T.let(
              :next_month,
              Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::DetailRecordListParams::Filter::DateRange::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DetailRecordListParams::Page,
              Telnyx::Internal::AnyHash
            )
          end

        # Page number
        sig { returns(T.nilable(Integer)) }
        attr_reader :number

        sig { params(number: Integer).void }
        attr_writer :number

        # Page size
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        sig { params(number: Integer, size: Integer).returns(T.attached_class) }
        def self.new(
          # Page number
          number: nil,
          # Page size
          size: nil
        )
        end

        sig { override.returns({ number: Integer, size: Integer }) }
        def to_hash
        end
      end
    end
  end
end
