class CommunitiesController < ApplicationController
    before_authentification :authenticate_account, except: [ :index, :show]
   def def index
     @communities = Community.all
   end

   def show
   
   end

   def new 

   end
   
   def def create
   
   end
end