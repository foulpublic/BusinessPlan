class PlansController < ApplicationController

   def index
    @plans = Plan.all
    @plan = Plan.new
    redirect_to action: :index_nologin unless user_signed_in?
   end

   def index_nologin

   end

   def create
    Plan.create(plan_params)
    redirect_to :root
   end

   def update
    Plan.update(plan_params)
    redirect_to :root
   end

   private
   def plan_params
    params.require(:plan).permit(:plan_name,:service_id)
   end
end
