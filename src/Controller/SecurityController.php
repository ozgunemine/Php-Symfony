<?php

namespace App\Controller;

use App\Repository\Admin\SettingRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils,SettingRepository $settingRepository,HomeController $homeController): Response
    {
        $data=$settingRepository->findAll();
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();
        $cats=$homeController->CategoryTree();
        $cats[0]='<ul id="menu-v" style="background: #FFFFFF;">';
        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'data' => $data,
            'cats' => $cats,
            'error' => $error
        ]);
    }


    /**
     * @Route("/loginerror", name="app_login_error")
     */
    public function loginerror(AuthenticationUtils $authenticationUtils,SettingRepository $settingRepository,HomeController $homeController): Response
    {
        $data=$settingRepository->findAll();
        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();
        $this->addFlash('error','Girmeye çalıştığınız yere erişim hakkınız bulunmamaktadır.');
        $cats=$homeController->CategoryTree();
        $cats[0]='<ul id="menu-v" style="background: #FFFFFF;">';
        return $this->render('security/login.html.twig', [
            'last_username' => $lastUsername,
            'data' => $data,
            'cats' => $cats,
            'error' => $error
        ]);
    }
}
