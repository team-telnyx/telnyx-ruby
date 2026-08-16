# typed: strong

module Telnyx
  module Models
    class MeetingSessionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionListParams, Telnyx::Internal::AnyHash)
        end

      # Filter meeting sessions by current status.
      sig do
        returns(T.nilable(Telnyx::MeetingSessionListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Telnyx::MeetingSessionListParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: Telnyx::MeetingSessionListParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter meeting sessions by current status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: Telnyx::MeetingSessionListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter meeting sessions by current status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MeetingSessionListParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(
            :scheduled,
            Telnyx::MeetingSessionListParams::Status::TaggedSymbol
          )
        JOINING =
          T.let(
            :joining,
            Telnyx::MeetingSessionListParams::Status::TaggedSymbol
          )
        WAITING_FOR_ADMISSION =
          T.let(
            :waiting_for_admission,
            Telnyx::MeetingSessionListParams::Status::TaggedSymbol
          )
        ACTIVE =
          T.let(:active, Telnyx::MeetingSessionListParams::Status::TaggedSymbol)
        LEAVING =
          T.let(
            :leaving,
            Telnyx::MeetingSessionListParams::Status::TaggedSymbol
          )
        ENDED =
          T.let(:ended, Telnyx::MeetingSessionListParams::Status::TaggedSymbol)
        FAILED =
          T.let(:failed, Telnyx::MeetingSessionListParams::Status::TaggedSymbol)
        ADMISSION_DENIED =
          T.let(
            :admission_denied,
            Telnyx::MeetingSessionListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MeetingSessionListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
