Ce projet fait part du travail effectué en vue du test de compétence imposé par l'entreprise HUPI pour la candidature d'un stage en informatique.

Tâches demandées : 
- Installer le framework RubyOnRails (sur machine ou docker)
- Suivre le guide officiel de démarrage de RubyOnRails
- Créer un répertoire public sur Github ou autres
- Ajouter une fonctionnalité pour noter les articles
- Ajouter une fonctionnalité pour afficher la moyenne des notes par articles
- Point bonus : mettre en place un ou plusieurs test unitaires

Tâches effectuées :
- Le framework RubyOnRails est installé sur ma machine personnelle
- ////////
- Guide effectué, le projet est identique et fonctionnel.
- Ajout d'un modèle Note fonctionnel et commenté :
		-	Génération automatique : "bin/rails generate model Note score:float article:references"
		-	Migration : "bin/rails db:migrate"
		-   Ajout association "has_many :notes, dependent: destroy" dans la classe du modèle Article
		-	Ajout de l'entité ressource (facilitation des CRUD) dans config/routes.rb "resource: notes"
		-	Génération automatique controller : "generate note controller"
		-	Ajout des 'partial' notes et notes_form dans app/views/articles/show.html.erb
		-	Ajout fonctionnalité "delete" avec authentification
- Ajout de la fonction Article.computeMeanNotes appelée dans la vue app/views/articles/show.html.erb
- Developpement de trois tests unitaires :
	- 1) Test de la persistance d'une note correcte
	- 2) Test de la validation d'une note correcte
	- 3) Test de la non validation d'une note non correcte


Afin de contextualiser au mieux la notation du travail effectué, quelques précisions de transparence :
	- Je n'avais jamais appris ou codé en Ruby, seulement rapidement introduit à travers des portions de codes pour illustrer des algorithmes
	- Je n'avais jamais utilisé RubyOnRails
	- environ 6h de travail dispatchées entre jeudi et vendredi soir, ayant eu une journée de cours assez chargée le vendredi
	