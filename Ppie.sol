// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Trainer{
    uint8 public  pokeballs;// public by default
    uint8 private catchedPokemon=0;
    uint internal leagueMedals;
    // uint external masterBalls; // not working rn 
    function updatePokeballs(uint8 _balls) public{
        pokeballs=_balls;
    }
    function updatePokemons(uint8 _nopokemons) public {
        catchedPokemon=_nopokemons;
    }
    function updateLeagueMedals(uint _medals) public{
        leagueMedals=_medals;
    }
}
contract AshKetchum is Trainer{
    function updateLeagueMedal(uint8 _medals) public {
        leagueMedals=_medals;
    }
    // function updateCNoPokemon(uint8 _nopokemons) public{catchedPokemon=_nopokemons;} // not possible to access
    // the private declared variable even by child contract
} 