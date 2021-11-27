# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  def read
    render json: { message: "#{Subscription.count} inscrições na turma SPDv1.6 realizadas com sucesso!" }
  end

end
