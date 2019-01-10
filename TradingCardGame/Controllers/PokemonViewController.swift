//
//  ViewController.swift
//  TradingCardGame
//
//  Created by J on 1/9/19.
//  Copyright © 2019 J. All rights reserved.
//

import UIKit

class PokemonViewController: UIViewController {
  @IBOutlet weak var pokemonCardsCollectionView: UICollectionView!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    PokemonAPIClient.PokemonInfo { (error, pokemon) in
      if let error = error {
        print(error)
      }
      
      if let pokemon = pokemon {
        print(pokemon.count)
      }
    }
  }


}

