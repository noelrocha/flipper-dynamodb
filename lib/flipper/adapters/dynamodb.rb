require "flipper/dynamodb/adapters/version"

require "flipper/dynamodb/feature"
require "flipper/dynamodb/gate"

require 'flipper'

module Flipper
  module Adapters
    module Dynamodb
      FeaturesKey = :features

      attr_reader :name

      def initialize
        @name = :dynamodb
      end

      def features
      end

      def add(feature)
      end

      def remove(feature)
      end

      def clear(feature)
      end

      def get(feature)
      end

      def get_multi(features)
      end

      def get_all
      end

      def enable(feature, gate, thing)
      end

      def disable(feature, gate, thing)
      end

    end
  end
end
