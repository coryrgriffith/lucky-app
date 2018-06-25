Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "/fortune_url" => "api/examples#fortune_action"
  get "/lotto_numbers_url" => "api/examples#lotto_action"
  get "/beer_url" => "api/examples#beer_action"
end
