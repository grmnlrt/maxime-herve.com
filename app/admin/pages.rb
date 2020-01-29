ActiveAdmin.register Page do
  menu priority: 4
  config.filters = false
  config.per_page = 15

  index do
    selectable_column
    column "Slug" do |page|
      link_to page.slug, admin_page_path(page)
    end
    column "Description (en)", sortable: :content_en do |page|
      link_to page.content_en, admin_page_path(page)
    end
    column "Description (fr)", sortable: :content_fr do |page|
      link_to page.content_fr, admin_page_path(page)
    end
    actions
  end

  permit_params :slug, :content_fr, :content_en

  form title: 'Page' do |f|
    inputs "Contenu" do
      f.input :slug
      f.input :content_en
      f.input :content_fr
    end
    actions
  end
end
