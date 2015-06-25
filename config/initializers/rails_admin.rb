RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

  config.model List do
    field :title
    field :curator
    field :curator_url
    field :sources
    field :description
    field :tags
    field :view_count
    field :published
    # field :users
  end

  config.model Item do
    field :title
    field :url
    field :abstract
    field :year
    field :author
    field :journal
    field :lists
    field :syllabus
  end

  config.model UserItem do
    field :user
    field :item
    field :recommend
  end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
