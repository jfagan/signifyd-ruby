module Signifyd
  module API
    module Analysis
      module ClassMethods
        # To retrieve analysis by orderId pass in {order_id: value}
        # into options
        def find(order_id, api_key=nil)
          options[:analysis] = true
          Signifyd.request(:get, url, filters, api_key, options)
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end