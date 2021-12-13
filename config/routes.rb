Spree::Core::Engine.add_routes do
  scope '(:locale)', locale: /#{Spree.available_locales.join('|')}/, defaults: { locale: nil } do
    namespace :admin, path: Spree.admin_path do
      resources :trackers
    end
  end
end
