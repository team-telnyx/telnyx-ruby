# typed: strong

module Telnyx
  module Models
    class PortingOrdersActivationJob < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrdersActivationJob, Telnyx::Internal::AnyHash)
        end

      # ISO 8601 formatted date indicating when the activation job should be executed.
      # This time should be between some activation window.
      sig { returns(T.nilable(Time)) }
      attr_reader :activate_at

      sig { params(activate_at: Time).void }
      attr_writer :activate_at

      # Specifies the type of this activation job
      sig do
        returns(
          T.nilable(
            Telnyx::PortingOrdersActivationJob::ActivationType::TaggedSymbol
          )
        )
      end
      attr_reader :activation_type

      sig do
        params(
          activation_type:
            Telnyx::PortingOrdersActivationJob::ActivationType::OrSymbol
        ).void
      end
      attr_writer :activation_type

      # List of allowed activation windows for this activation job
      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::PortingOrdersActivationJob::ActivationWindow]
          )
        )
      end
      attr_reader :activation_windows

      sig do
        params(
          activation_windows:
            T::Array[
              Telnyx::PortingOrdersActivationJob::ActivationWindow::OrHash
            ]
        ).void
      end
      attr_writer :activation_windows

      # Specifies the status of this activation job
      sig do
        returns(
          T.nilable(Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: Telnyx::PortingOrdersActivationJob::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # Uniquely identifies this activation job
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          activate_at: Time,
          activation_type:
            Telnyx::PortingOrdersActivationJob::ActivationType::OrSymbol,
          activation_windows:
            T::Array[
              Telnyx::PortingOrdersActivationJob::ActivationWindow::OrHash
            ],
          created_at: Time,
          record_type: String,
          status: Telnyx::PortingOrdersActivationJob::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies this activation job
        id: nil,
        # ISO 8601 formatted date indicating when the activation job should be executed.
        # This time should be between some activation window.
        activate_at: nil,
        # Specifies the type of this activation job
        activation_type: nil,
        # List of allowed activation windows for this activation job
        activation_windows: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Specifies the status of this activation job
        status: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            activate_at: Time,
            activation_type:
              Telnyx::PortingOrdersActivationJob::ActivationType::TaggedSymbol,
            activation_windows:
              T::Array[Telnyx::PortingOrdersActivationJob::ActivationWindow],
            created_at: Time,
            record_type: String,
            status: Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Specifies the type of this activation job
      module ActivationType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrdersActivationJob::ActivationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCHEDULED =
          T.let(
            :scheduled,
            Telnyx::PortingOrdersActivationJob::ActivationType::TaggedSymbol
          )
        ON_DEMAND =
          T.let(
            :"on-demand",
            Telnyx::PortingOrdersActivationJob::ActivationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingOrdersActivationJob::ActivationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ActivationWindow < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PortingOrdersActivationJob::ActivationWindow,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 8601 formatted date indicating when the activation window ends
        sig { returns(T.nilable(Time)) }
        attr_reader :end_at

        sig { params(end_at: Time).void }
        attr_writer :end_at

        # ISO 8601 formatted date indicating when the activation window starts
        sig { returns(T.nilable(Time)) }
        attr_reader :start_at

        sig { params(start_at: Time).void }
        attr_writer :start_at

        sig { params(end_at: Time, start_at: Time).returns(T.attached_class) }
        def self.new(
          # ISO 8601 formatted date indicating when the activation window ends
          end_at: nil,
          # ISO 8601 formatted date indicating when the activation window starts
          start_at: nil
        )
        end

        sig { override.returns({ end_at: Time, start_at: Time }) }
        def to_hash
        end
      end

      # Specifies the status of this activation job
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrdersActivationJob::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol
          )
        IN_PROCESS =
          T.let(
            :"in-process",
            Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol
          )
        COMPLETED =
          T.let(
            :completed,
            Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::PortingOrdersActivationJob::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
