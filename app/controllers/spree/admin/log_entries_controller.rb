 module Spree
  module Admin
    class LogEntriesController < ResourceController
    

    private
      def collection
        return @collection if @collection
        
        scope = LogEntry.where(source_id: params[:source_id]) 

        @collection = scope.page(params[:page])
      end
    end
  end
end
