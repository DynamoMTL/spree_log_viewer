 module Spree
  module Admin
    class LogEntriesController < ResourceController
    

    private
      def collection
        return @collection if @collection
        
        scope = LogEntry.where(source_id: params[:source_id], source_type: params[:source_type]) 

        @collection = scope.page(params[:page])
      end
    end
  end
end
