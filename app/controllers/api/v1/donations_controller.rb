module Api
  module V1
    class DonationsController < ApplicationController
      before_action :authenticate_api_v1_user!, only: :invite
      before_action :required_params, only: :create

      def create
        @donation = donation
      end

      def invite
        invite_params.each do |email|
          UserMailer.invite_donation_email(current_api_v1_user, email).deliver_now
        end
      end

      private

      def donation
        user.skip_password_validation = true
        @donation ||= user.donations.new(permitted_params.merge(school_id: school_id))
      end

      def school_id
        @school_id ||= School.find_by!(account_number: params[:account_number]).id
      end

      def user
        @user ||= User.find_or_initialize_by(email: params[:email])
      end

      def permitted_params
        params.permit(:amount)
      end

      def required_params
        params.require([:email, :account_number, :amount])
      end

      def invite_params
        params.require(:emails)
      end
    end
  end
end
