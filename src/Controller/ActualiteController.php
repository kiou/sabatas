<?php
namespace App\Controller;

use App\Entity\Actualite;
use App\Utilities\BaseClass;
use App\Repository\ActualiteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ActualiteController extends AbstractController
{
    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }
    
    public function index($categorie, ActualiteRepository $ActualiteRepository)
    {
        $actualites = $ActualiteRepository->getActualites($categorie, 6);

        return $this->render('actualites.html.twig',[
            'actualites' => $actualites,
            'categories' => $this->base->getCategorie()
        ]);
    }


    public function view(Actualite $id, ActualiteRepository $ActualiteRepository)
    {
        $actualite = $ActualiteRepository->find($id);

        return $this->render('actualite.html.twig',[
            'actualite' => $actualite,
        ]);

    }
}