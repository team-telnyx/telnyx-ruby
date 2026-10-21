# frozen_string_literal: true

module Telnyx
  module Models
    module Compute
      # @see Telnyx::Resources::Compute::Funcs#list
      class FuncListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute bindings
        #   Always present; empty when the function has no bindings.
        #
        #   @return [Array<Telnyx::Models::Compute::FuncListResponse::Binding>, nil]
        optional :bindings,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Compute::FuncListResponse::Binding] }

        # @!attribute created_at
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute invoke_url
        #
        #   @return [String, nil]
        optional :invoke_url, String

        # @!attribute message
        #
        #   @return [String, nil]
        optional :message, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute status_detail
        #
        #   @return [String, nil]
        optional :status_detail, String

        # @!attribute updated_at
        #
        #   @return [String, nil]
        optional :updated_at, String

        # @!method initialize(id: nil, bindings: nil, created_at: nil, invoke_url: nil, message: nil, name: nil, record_type: nil, status: nil, status_detail: nil, updated_at: nil)
        #   @param id [String]
        #
        #   @param bindings [Array<Telnyx::Models::Compute::FuncListResponse::Binding>] Always present; empty when the function has no bindings.
        #
        #   @param created_at [String]
        #
        #   @param invoke_url [String]
        #
        #   @param message [String]
        #
        #   @param name [String]
        #
        #   @param record_type [String]
        #
        #   @param status [String]
        #
        #   @param status_detail [String]
        #
        #   @param updated_at [String]

        class Binding < Telnyx::Internal::Type::BaseModel
          # @!attribute actor_type
          #
          #   @return [String, nil]
          optional :actor_type, String

          # @!attribute binding_id
          #
          #   @return [String, nil]
          optional :binding_id, String

          # @!attribute binding_type
          #
          #   @return [String, nil]
          optional :binding_type, String

          # @!attribute bucket_id
          #
          #   @return [String, nil]
          optional :bucket_id, String

          # @!attribute created_at
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute env_name
          #
          #   @return [String, nil]
          optional :env_name, String

          # @!attribute func_id
          #
          #   @return [String, nil]
          optional :func_id, String

          # @!attribute kv_id
          #
          #   @return [String, nil]
          optional :kv_id, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute secret_name
          #
          #   @return [String, nil]
          optional :secret_name, String

          # @!attribute sqldb_id
          #
          #   @return [String, nil]
          optional :sqldb_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute updated_at
          #
          #   @return [String, nil]
          optional :updated_at, String

          # @!method initialize(actor_type: nil, binding_id: nil, binding_type: nil, bucket_id: nil, created_at: nil, env_name: nil, func_id: nil, kv_id: nil, record_type: nil, secret_name: nil, sqldb_id: nil, status: nil, updated_at: nil)
          #   A function-scoped binding persisted at ship time. For binding_type=actor,
          #   actor_type is the referenced Stateful Actor type and env_name is the binding
          #   name exposed to the function.
          #
          #   @param actor_type [String]
          #   @param binding_id [String]
          #   @param binding_type [String]
          #   @param bucket_id [String]
          #   @param created_at [String]
          #   @param env_name [String]
          #   @param func_id [String]
          #   @param kv_id [String]
          #   @param record_type [String]
          #   @param secret_name [String]
          #   @param sqldb_id [String]
          #   @param status [String]
          #   @param updated_at [String]
        end
      end
    end
  end
end
