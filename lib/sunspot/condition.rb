module Sunspot
  module Condition
    class Base
      def initialize(field, value)
        @field, @value = field, value
      end

      def to_solr_query
        "#{field.indexed_name}:#{solr_value}"
      end

      protected
      attr_accessor :field, :value

      def solr_value
        escape field.to_indexed(value)
      end

      def escape(value)
        Solr::Util.query_parser_escape value
      end
    end

    class EqualTo < Base
      def to_solr_conditional
        "#{solr_value}"
      end
    end
  end
end