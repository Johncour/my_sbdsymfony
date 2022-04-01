<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\GameRepository;

class SearchController extends AbstractController
{
    #[Route('/search', name: 'app_search', methods: ['GET'])]
    public function index(Request $request, GameRepository $gameRepository): Response
    {
        $word = $request->query->get('search');
        $jeux = $gameRepository->findBySearch($word);
        /* SELECT * FROM game WHERE title LIKE '%test%' */
        return $this->render('search/index.html.twig', [
            'games' => $jeux,
            'mot' => $word
        ]);
    }

}
