<?php

namespace App\Http\Controllers;

use App\Game;

class GameController extends Controller
{
    // GET /api/games → all games with genre
    public function index()
    {
        return response()->json(
            Game::with('genre')->orderBy('title')->get()
        );
    }

    // GET /api/games/{id} → one game with genre
    public function show($id)
    {
        $game = Game::with('genre')->findOrFail($id);
        return response()->json($game);
    }
}
