# typed: strong

module Telnyx
  module Models
    class SimCardDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardDeleteParams, Telnyx::Internal::AnyHash)
        end

      # Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
      # is irreversible and the eSIM cannot be re-registered.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :report_lost

      sig { params(report_lost: T::Boolean).void }
      attr_writer :report_lost

      sig do
        params(
          report_lost: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Enables deletion of disabled eSIMs that can't be uninstalled from a device. This
        # is irreversible and the eSIM cannot be re-registered.
        report_lost: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { report_lost: T::Boolean, request_options: Telnyx::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
