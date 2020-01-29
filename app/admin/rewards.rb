ActiveAdmin.register Reward do
  menu priority: 3
  config.filters = false
  config.per_page = 15

  action_item :view_site do
    link_to "Go to information page", "/informations", target: "_blank"
  end

  index do
    selectable_column
    column "Reward", sortable: :description do |reward|
      link_to reward.description, admin_reward_path(reward)
    end
    column "Year" do |reward|
      link_to reward.year, admin_reward_path(reward)
    end
    actions
  end

  permit_params :description, :year

  form title: 'Reward' do |f|
    inputs "Contenu" do
      f.input :description
      f.input :year
    end
    actions
  end
end
