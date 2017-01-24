class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    a = {}
    b = {}
    def a.to_partial_path; 'a'; end
    def b.to_partial_path; 'b'; end

    @het_collection = [a, b]
    @hom_collection = [a, a]
  end
end
