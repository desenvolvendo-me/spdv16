# frozen_string_literal: true

class SubscriptionsController < ApplicationController
  def read
    render json: { message: "#{Subscription.count} inscrições na turma SPDv1.6 realizadas com sucesso!" }
  end

  def write
    Subscription.create(description: params["turma"]["nome"])

    render json: { message: "#{subscription_params["aluno"]}, sua inscrição na turma #{params["turma"]["nome"]} foi realizada com sucesso!" }
  end

  private

  def subscription_params
    params.permit(:aluno, turma: [:nome])
  end
end
