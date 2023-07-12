# frozen_string_literal: true

module Api
  module V1
    class PollingsController < ApplicationController
      def create
        binding.pry
        Polling.create!
      end
    end
  end
end
