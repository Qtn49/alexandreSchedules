<?php


namespace App\Controller;


use App\Entity\Day;
use App\Repository\DayRepository;
use App\Repository\PeriodeRepository;
use DateTime;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ExerciceController extends AbstractController
{

    /**
     * @Route("/", name="app_home", methods={"GET"})
     */
    public function home () {

        return $this->render('day/home.html.twig');

    }

    /**
     * @Route("/day", name="day", methods={"GET"})
     * @param DayRepository $dayRepository
     * @param PeriodeRepository $periodeRepository
     * @return Response
     */
    public function exercice (DayRepository $dayRepository, PeriodeRepository $periodeRepository) : Response {

        $day = $dayRepository->findBy(array('date' => new DateTime()))[0];
//        $day = $dayRepository->find(1);

        return $this->render('day/activities.html.twig', [
            'day' => $day,
            'periodes' => $periodeRepository->findAll()
        ]);

    }

    /**
     * @Route("/search", name="app_search", methods={"GET", "POST"})
     * @param Request $request
     * @param DayRepository $dayRepository
     * @param PeriodeRepository $periodeRepository
     * @return Response
     */
    function search (Request $request, DayRepository $dayRepository, PeriodeRepository $periodeRepository) {

        $form = $this->createFormBuilder(new Day)
            ->add('date', null, ['label' => 'Choose a date : '])
            ->getForm();

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isSubmitted()) {

            $date = $form->getData()->getDate();
            $day = $dayRepository->findBy(['date' => $date])[0];

            if ($day) {

                return $this->render('day/activities.html.twig', ['day' => $day, 'periodes' => $periodeRepository->findAll()]);

            }

        }

        return $this->render('search/index.html.twig', [
            'form' => $form->createView()
        ]);

    }

}