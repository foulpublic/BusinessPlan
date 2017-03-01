class PlansController < ApplicationController

   def index
    redirect_to action: :index_nologin unless user_signed_in?
   end

   def index_nologin

   end

end
