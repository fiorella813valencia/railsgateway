class ApplicationController < ActionController::Base
    require 'net/http'

    def service
        #endpoint=params[:endpoint]
        redirect_to  "http://localhost:8084/"
    def agencies 
        endpoint=params[:endpoint]
        redirect_to "https://agencymicro.azurewebsites.net/api/v1/agencies/#{endpoint}"
        
    def activities 
        endpoint=params[:endpoint]
        redirect_to "https://activity-services.onrender.com/api/activities/#{endpoint}"

    def hired_services
        endpoint=params[:endpoint]
        redirect_to "https://hired-service.onrender.com/api/hired_services/#{endpoint}"

    #def tourist
    #    endpoint=params[:endpoint]
    #    redirect_to "https://touristrepo.onrender.com/tourists/#{endpoint}"

    def show_tourist
        tourist_id = params[:id]
        redirect_to "https://touristrepo.onrender.com/tourists/#{tourist_id}"

    def service_reviews
        endpoint=params[:endpoint]
        redirect_to "https://service-review-repo.onrender.com/service-reviews/reviews/#{endpoint}"

    def activity_reviews
        endpoint=params[:endpoint]
        redirect_to "https://revisionactividad.onrender.com/api/v1/activityreview/#{endpoint}"
    
end
