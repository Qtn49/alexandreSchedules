<?php

namespace App\Controller\Admin;

use App\Entity\Book;
use App\Entity\Cours;
use App\Entity\Day;
use App\Entity\Exercice;
use App\Entity\Periode;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('AlexandreSchedules');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Book', 'fa fa-tags', Book::class);
        yield MenuItem::linkToCrud('Day', 'fa fa-tags', Day::class);
        yield MenuItem::linkToCrud('Cours', 'fa fa-tags', Cours::class);
        yield MenuItem::linkToCrud('Exercice', 'fa fa-tags', Exercice::class);
        yield MenuItem::linkToCrud('Période', 'fa fa-tags', Periode::class);

    }
}
