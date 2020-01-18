RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end





  config.model 'User' do
  label 'Les entreprises' # Change the label of this model class

  field :nomentreprise do
    label "Nom de l'entreprise" # Change the label of this field
  end
    field :adresseentreprise do
    label "Adresse complète de l'entreprise" # Change the label of this field
  end
  field :numerosiret do
    label "Numero Siret de l'entreprises" # Change the label of this field
  end
   field :numerocnaf do
    label "Numéro Cnaf" # Change the label of this field
  end
  field :formejuridique do
    label "Type de société (Sarl, SA, etc...)" # Change the label of this field
  end
  field :sexerepresentant do
    label "Sexe du representant (Masculin ou Féminin)" # Change the label of this field
  end
   field :nomrepresentant do
    label "Nom du representant" # Change the label of this field
  end
    field :prenomrepresentant do
    label "Prénom du representant" # Change the label of this field
  end
      field :fonctionrepresentant do
    label "Fonction du representant" # Change the label of this field
  end
        field :numerourssaf do
    label "Numéro Urssaf" # Change the label of this field
  end

          field :adresseurssaf do
    label "Adresse complète de l'urssaf" # Change the label of this field
  end

            field :ville do
    label "Ville ou est signée le contrat de travail" # Change the label of this field
  end
            field :conventioncollective do
    label "conventioncollective" # Change the label of this field
  end
              field :conventioncollectivetype do
    label "type de convention collective" # Change the label of this field
  end

              field :caisseretraite do
    label "caisse de retraite" # Change the label of this field
  end

                field :caisseprevoyance do
    label "Caisse de prévoyance" # Change the label of this field
  end


end



end
