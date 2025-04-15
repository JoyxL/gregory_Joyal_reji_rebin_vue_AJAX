<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class GameController extends Controller
{
    public function index()
    {
        return response()->json(DB::table('games')->get());
    }

    public function show($id)
    {
        $game = DB::table('games')->find($id);
        if (!$game) {
            return response()->json(['message' => 'Game not found'], 404);
        }
        return response()->json($game);
    }
}
