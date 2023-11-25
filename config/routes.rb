Rails.application.routes.draw do
  # First user story
  # A page with a form, where User can type their question and submit it
  get '/ask', to: 'questions#ask', as: :ask

  # Second user story
  # A page where in the controller, we will code the logic
  # of what the coach's answer is supposed to be
  # And then display that answer on the this page
  get '/answer', to: 'questions#answer', as: :answer
end
