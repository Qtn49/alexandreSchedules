<?php


namespace App\Controller;


use App\Repository\DayRepository;
use App\Repository\PeriodeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ExerciceController extends AbstractController
{

    /**
     * @Route("/", name="home")
     */
    public function home () {

        return $this->render('day/home.html.twig');

    }

    /**
     * @Route("/day", name="day")
     * @param DayRepository $dayRepository
     * @param PeriodeRepository $periodeRepository
     * @return Response
     */
    public function exercice (DayRepository $dayRepository, PeriodeRepository $periodeRepository) : Response {

        $day = $dayRepository->findBy(array('date' => new \DateTime()))[0];
//        $day = $dayRepository->find(1);

        return $this->render('day/activities.html.twig', [
            'day' => $day,
            'periodes' => $periodeRepository->findAll()
        ]);

    }

}