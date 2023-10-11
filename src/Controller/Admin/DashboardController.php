<?php

namespace App\Controller\Admin;

use App\Entity\Avis;
use App\Entity\User;
use App\Entity\Block;
use App\Entity\Header;
use App\Entity\Chambre;
use App\Entity\Actualite;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Config\UserMenu;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use Symfony\Component\Security\Core\User\UserInterface;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;

class DashboardController extends AbstractDashboardController
{

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return $this->render('admin/dashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<img src="../img/logo.svg" style="max-width:95%;">')
            ->setFaviconPath('img/favicon.png');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('Administration');
        yield MenuItem::linkToCrud('Utilisateurs', 'fas fa-dot-circle', User::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Blocks', 'fas fa-dot-circle', Block::class)->setDefaultSort(['id' => 'DESC']);

        yield MenuItem::section('Site');
        yield MenuItem::linkToCrud('En tête', 'fas fa-dot-circle', Header::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Chambres', 'fas fa-dot-circle', Chambre::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Actualités', 'fas fa-dot-circle', Actualite::class)->setDefaultSort(['id' => 'DESC']);
        yield MenuItem::linkToCrud('Témoignages', 'fas fa-dot-circle', Avis::class)->setDefaultSort(['id' => 'DESC']);
    }

    public function configureUserMenu(UserInterface $user): UserMenu
    {

        return parent::configureUserMenu($user)
            ->setGravatarEmail($user->getEmail())
            ->setName($user->getPrenom().' '.$user->getNom());
    }

    public function configureActions(): Actions
    {
        return parent::configureActions()
            ->add(Crud::PAGE_INDEX, Action::DETAIL);
    }
}
