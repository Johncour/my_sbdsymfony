<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\GameRepository;
use App\Repository\PlayerRepository;
use App\Entity\Game, App\Entity\Player;
use Doctrine\ORM\EntityManagerInterface;
use App\Form\CompartType;
use App\Entity\Contest;
use Symfony\Component\HttpFoundation\Request;


class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(GameRepository $gameRepository, PlayerRepository $playerRepository): Response
    {
        return $this->render('home/index.html.twig', [
            "games" => $gameRepository->findAll(),
            "players" => count($playerRepository->findAll()),
            "winner" => $playerRepository->findWinners()
        ]);
    }

    #[Route('/commencer-une-partie-{title}', name: 'app_home_compart')]
    public function compart(Request $request, EntityManagerInterface $em, Game $jeu
    // , GameRepository $gameRepository
    )
    {
        $partie = new Contest;
        $form = $this->createForm(CompartType::class, $partie);
        $form->handleRequest($request);
        $partie->setGame($jeu);
        if( $form->isSubmitted() && $form->isValid()){
            // $em = $this->getDoctrine()->getManager();
            $em->persist($partie);
            $em->flush();
            $this->addFlash("success", "La nouvelle partie a bien été enregistré");
            return $this->redirect("app_home");
        }
        return $this->render("home/compart.html.twig", [ 
            "form" => $form->createView()
            // ,
            // "jeu"  => $gameRepository->find($jeu)
         ]);
    }

}
