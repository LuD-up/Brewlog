//
//  DeveloperPreview.swift
//  BrewLog
//
//  Created by Sylvain Bauvais on 16/11/2023.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    var articles: [Article] = [
        .init(
            id: NSUUID().uuidString,
            title: "Will climate change cause beer shortages ?",
            date: "8 novembre 2023",
            imageUrl: "article-1",
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse venenatis ligula lorem, malesuada convallis sem blandit vitae. Proin fringilla efficitur consequat. Aliquam erat volutpat. Praesent vitae libero imperdiet, porta ante at, semper magna. Donec consectetur congue rhoncus. Nunc eros est, vehicula vitae rhoncus in, lobortis nec leo. Quisque porttitor vel lorem vitae posuere. Cras mollis tristique ligula. Fusce sed ultrices massa. Sed nec lectus sed sem egestas dignissim quis vel dolor. Ut pretium porta dolor nec sagittis. Sed sollicitudin sapien vitae ligula fringilla condimentum eget a metus. Nunc finibus leo id enim pharetra, id faucibus erat gravida. Nulla lobortis, metus sed fermentum euismod, justo urna egestas sem, vitae imperdiet metus orci a magna. Vivamus quis commodo nisi, dapibus dictum tellus."
        ),
        .init(
            id: NSUUID().uuidString,
            title: "Est-ce que le marché de la bière va survivre à la crise ?",
            date: "22 octobre 2023",
            imageUrl: "article-2",
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse venenatis ligula lorem, malesuada convallis sem blandit vitae. Proin fringilla efficitur consequat. Aliquam erat volutpat. Praesent vitae libero imperdiet, porta ante at, semper magna. Donec consectetur congue rhoncus. Nunc eros est, vehicula vitae rhoncus in, lobortis nec leo. Quisque porttitor vel lorem vitae posuere. Cras mollis tristique ligula. Fusce sed ultrices massa. Sed nec lectus sed sem egestas dignissim quis vel dolor. Ut pretium porta dolor nec sagittis. Sed sollicitudin sapien vitae ligula fringilla condimentum eget a metus. Nunc finibus leo id enim pharetra, id faucibus erat gravida. Nulla lobortis, metus sed fermentum euismod, justo urna egestas sem, vitae imperdiet metus orci a magna. Vivamus quis commodo nisi, dapibus dictum tellus."
        ),
        .init(
            id: NSUUID().uuidString,
            title: "Top 10 des meilleurs bars dans l’Arrageois",
            date: "15 septembre 2023",
            imageUrl: "article-3",
            content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse venenatis ligula lorem, malesuada convallis sem blandit vitae. Proin fringilla efficitur consequat. Aliquam erat volutpat. Praesent vitae libero imperdiet, porta ante at, semper magna. Donec consectetur congue rhoncus. Nunc eros est, vehicula vitae rhoncus in, lobortis nec leo. Quisque porttitor vel lorem vitae posuere. Cras mollis tristique ligula. Fusce sed ultrices massa. Sed nec lectus sed sem egestas dignissim quis vel dolor. Ut pretium porta dolor nec sagittis. Sed sollicitudin sapien vitae ligula fringilla condimentum eget a metus. Nunc finibus leo id enim pharetra, id faucibus erat gravida. Nulla lobortis, metus sed fermentum euismod, justo urna egestas sem, vitae imperdiet metus orci a magna. Vivamus quis commodo nisi, dapibus dictum tellus."
        ),
    ]
    
    var beers: [Beer] = [
        .init(
            id: NSUUID().uuidString,
            name: "Thelma",
            brewery: "Thiriez",
            imageUrl: "biere-artisanale-thelma-double-saison-brasserie-thiriez",
            abv: "7",
            type: "Saison",
            description: "Une bière rafraîchissante brassée avec des fleurs d’hibiscus et du poivre de Madagascar aux légères notes de pamplemousse, une aromatique exotique mémorable."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Étoile du Nord",
            brewery: "Thiriez",
            imageUrl: "etoile-du-nord-saison-houblonnee-brasserie-thiriez-1",
            abv: "5,5",
            type: "Saison",
            description: "L’Étoile du Nord de la brasserie Thiriez va vous plaire ! Une bière Sèche à l’aromatique terriblement efficace. Amère et désaltérante, cette bière artisanale est parfaite pour vos soirées raclettes et accords bières fromages en tout genre."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Double Citra",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-double-ipa-citra-brasserie-cambier",
            abv: "8",
            type: "Double IPA",
            description: "Cette bière artisanale travaillée en single Hop avec du Citra affiche une belle texture et une base bien maltée complétée par des arômes d’agrumes typique ce houblon. Bienvenue à cette Double Citra."
        ),        
        .init(
            id: NSUUID().uuidString,
            name: "Sour Gruit",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-sour-gruit-brasserie-cambier",
            abv: "6",
            type: "Sour",
            description: "Une bière a la couleur rosée ! Colorée par la purée de fruits qui a pris sa place : ici de la rhubarbe rouge et verte. Son nez révèle les saveurs acidulées. En bouche laa rhubarbe s’associe parfaitement aux notes des différentes herbes aromatiques typiques des Gruit. Une bière aux fruits qui révèle la finesse de ses ingrédients."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Double Galaxy",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-double-ipa-galaxy-brasserie-cambier",
            abv: "8",
            type: "Sour",
            description: "Cette bière artisanale est une Double IPA travaillée en single Hop avec du Galaxy ! Une jolie texture hazy et de beaux arômes de pêche et de fruits tropicaux !"
        ),
        .init(
            id: NSUUID().uuidString,
            name: "DDH IPA",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-ddh-ipa-citra-idaho-7-brasserie-cambier-yakima-chief-hops",
            abv: "7",
            type: "IPA",
            description: "Cette bière artisanale est une IPA DDH travaillée avec les houblons Citra et Idaho7. Un nez au parfum de fruits tropicaux très intense et juteux. En bouche des arômes d’agrumes, de citron vert et de pamplemousse rose explosent. Une bière est douce et puissante, amère et fruitée."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Double Sabro Tonka",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-double-ipa-sabro-tonka-brasserie-cambier",
            abv: "8",
            type: "Double IPA",
            description: "Cette bière artisanale est une Double IPA travaillée en single Hop avec du Sabro ainsi  qu’un ajout de fève Tonka qui apporte de la rondeur ! Au menu de la Coco et de superbes saveurs d’amandes et cacao amer."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Sour",
            brewery: "Cambier",
            imageUrl: "biere-artisanale-sour-framboise-rhubarbe-brasserie-cambier",
            abv: "5",
            type: "Sour",
            description: "Une bière rose ! Colorée par la purée de fruits qui a pris sa place en macérant pendant un bon mois. Son nez révèle les saveurs acidulées de la framboise. Sa bouche celle de la rhubarbe qui s’associe parfaitement à la framboise. Une bière aux fruits non sucrée qui révèle la finesse de ses ingrédients."
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Gose",
            brewery: "Popihn",
            imageUrl: "biere-artisanale-neipa-ddh-gose-fleur-de-sel-coriande-brasserie-popihn",
            abv: "4,6",
            type: "Gose",
            description: "Cette bière artisanale de style Gose est une merveille à la robe éclatante.  Brassée avec de la fleur de sel et des graines de coriandre, ce nectar bien acidulé sera parfait sur un méga plateau d’huitres !"
        ),
        .init(
            id: NSUUID().uuidString,
            name: "Pils",
            brewery: "Popihn",
            imageUrl: "biere-artisanale-neipa-ddh-gose-fleur-de-sel-coriande-brasserie-popihn",
            abv: "5",
            type: "Pilsner",
            description: "Brassée avec le houblon Saaz utilisée traditionnellement sur ce style et développant des arômes herbacés !"
        ),
    ]
}
