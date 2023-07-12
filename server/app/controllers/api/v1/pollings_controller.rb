# frozen_string_literal: true

module Api
  module V1
    class PollingsController < ApplicationController
      def create
        @polling = Polling.create!(blah: 'blah')

        # Simulate heavy API
        sleep(5) do
          @polling.update!(pollable: true)
        end
        render json: { polling_id: @polling.id }
      end

      def update
        polling.update!(status: 'processed')
        render json: { done: true, status: :ok }
      end

      def poll
        render json: { poll: @polling.blah }
      end

      protected

      def polling
        @polling = Polling.find(params[:polling_id]) ||
          Polling.find(params[:id])
      end
    end
  end
end
