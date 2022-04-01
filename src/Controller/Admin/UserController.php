<?php

namespace App\Controller\Admin;

use App\Entity\User, App\Entity\Player;
use App\Form\UserType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface as Hasher;

#[Route('/admin/user')]
class UserController extends AbstractController
{
    #[Route('/', name: 'app_admin_user_index', methods: ['GET'])]
    public function index(UserRepository $userRepository): Response
    {   
        return $this->render('admin/user/index.html.twig', [
            'users'  => $userRepository->findAll(['ROLE_ADMIN' => 'administrateur']),
        ]);
    }

    #[Route('/new', name: 'app_admin_user_new', methods: ['GET', 'POST'])]
    public function new(Request $request, UserRepository $userRepository, Hasher $hasher): Response
    {
        $user = new User();
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            dump($user);
            if( !in_array("ROLE_ADMIN", $user->getRoles() )){
                $player = new Player();
                $player->setNickname($user->getPseudo('pseudo'));
                $player->setEmail($form->get('email')->getData());
                // $player->setEmail( $request->request->get('email')); // On peut récupérer la valeur du champ avec l'objet Request
                $user->setplayer($player);
            } else {
                $user->setRoles(["ROLE_ADMIN"]);
            }

            $mdp = $form->get('password')->getData();
            $password = $hasher->hashPassword($user, $mdp);
            $user->setPassword($password);
            $userRepository->add($user);
            return $this->redirectToRoute('app_admin_user_index', [], Response::HTTP_SEE_OTHER);           
        }

        return $this->renderForm('admin/user/new.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_admin_user_show', methods: ['GET'], requirements: ['id' => '[0-9]+'])]
    /*{requirements=["id"="[0-9]+"}*/   
    public function show(User $user): Response
    {
        return $this->render('admin/user/show.html.twig', [
            'user' => $user,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_admin_user_edit', methods: ['GET', 'POST'], requirements: ['id' => '[0-9]+'])]
    public function edit(Request $request, User $user, UserRepository $userRepository, Hasher $hasher): Response
    {
        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);
        if( !in_array("ROLE_ADMIN", $user->getRoles() )){
            $player = new Player();
            $player->setNickname($user->getPseudo('pseudo'));
            $player->setEmail($form->get('email')->getData());
            // $player->setEmail( $request->request->get('email')); // On peut récupérer la valeur du champ avec l'objet Request
            $user->setplayer($player);
        } else {
            $user->setRoles(["ROLE_ADMIN"]);
        }

        if ($form->isSubmitted() && $form->isValid()) {
            if( $mdp = $form->get('password')->getData()){
                $password = $hasher->hashPassword($user, $mdp);
                $user->setPassword($password);
            }
            $userRepository->add($user);
            return $this->redirectToRoute('app_admin_user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('admin/user/edit.html.twig', [
            'user' => $user,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_admin_user_delete', methods: ['POST'])]
    public function delete(Request $request, User $user, UserRepository $userRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$user->getId(), $request->request->get('_token'))) {
            $userRepository->remove($user);
        }

        return $this->redirectToRoute('app_admin_user_index', [], Response::HTTP_SEE_OTHER);
    }

    #[Route('/update', name: 'app_admin_user_update')]
    public function update(UserRepository $userRepository, EntityManagerInterface $entityManager): Response
    {
        $ur = $userRepository->findAll();
        $compteur = 0;
        foreach($ur as $user){
            if( !in_array("ROLE_ADMIN", $user->getRoles()) && !$user->getPlayer()){
                    $player = new Player();
                    $player->setNickname($user->getPseudo())
                           ->setEmail($user->getPseudo() . '@yopmail.com');
                    $user->setplayer($player);
                    $compteur++;
            }
        }
        $entityManager->flush();
        $this->addFlash('success', 'Mise à jour des utilisateurs réussie ! $compteur joueurs crées');
        return $this->redirectToRoute('app_admin_player_index');
    }
}
