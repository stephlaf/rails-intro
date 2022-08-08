class PagesController < ApplicationController
  def home
    @date = Date.today
  end

  def about
  end

  def contact
    @members = %w[Winnie Nic Michael Anais Nicholas]
    query = params[:member]
    # raise # Pauses the execution of the `code`
    if query.present?
      @members = @members.select { |member| member.start_with?(query) }
    end
  end
end
