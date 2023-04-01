## TD4 - Packages ggplot2 et RMarkdown

### Question
1. Chargez le package ggplot2 nécessaire pour ce TD. Chargez aussi dplyr afin de pouvoir manipuler facilement les données.

2. En chargeant ggplot2, vous obtenez automatiquement un dataset nommé diamonds : visualisez-le à l’aide de la fonction View().

3. Utilisez glimpse() et summary() pour obtenir un résumé du jeu de données.

4. Visualisez l’histogramme du prix (price) des diamants. Testez plusieurs nombres d’intervalles (bins).

5. Même question que précédemment, mais uniquement sur les diamants valant moins de 5 000$. Que pouvez-vous remarquer ? Changez ensuite de geom pour tester geom_density.

6. Visualisez une potentielle corrélation entre les variables x et y (largeur et longueur des diamants). Que pouvez-vous noter ?

7. D’après vos observations à la question précédente, filtrez le jeu de données pour améliorer la visualisation.

8. Déterminez s’il-y-a une corrélation entre carat et price. Utilisez clarity pour colorer les individus étudiés.

9. Ajoutez une tendance sur le graphique précédent. Vous obtenez normalement une tendance par valeur de clarity. Comment obtenir une unique tendance ?

10. Réalisez un scatter plot carat vs price et utilisez facet_grid() pour obtenir un graphe pour chaque clarity possible.

11. Utilisez la geométrie violin pour regarder la distribution du prix selon la cut des diamants. Que pouvez-vous en déduire ?

12. Reprenez le code de la question 5 et ajoutez l’aesthetic fill = cut. Modifiez le nombre de bins pour que la visualisation soit lisible.

13. Utilisez un bar chart pour afficher le prix moyen des diamants de chaque couleur (variable color). Que peut-on en déduire ?

14. Chargez le jeu de données que vous utilisez pour le projet et tentez d’utiliser certaines visualisations du TD sur vos données afin de commencer l’analyse.