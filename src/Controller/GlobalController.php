<?php
namespace App\Controller;

use App\Utilities\BaseClass;
use App\Repository\AvisRepository;
use App\Repository\HeaderRepository;
use App\Repository\ChambreRepository;
use App\Repository\ActualiteRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class GlobalController extends AbstractController
{
    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }

    public function index(
        HeaderRepository $headerRepository,
        ChambreRepository $chambreRepository,
        ActualiteRepository $actualiteRepository,
        AvisRepository $avisRepository
    )
    {
        $header = $headerRepository->getHeader();
        $hotes = $chambreRepository->getChambres('hote');
        $gites = $chambreRepository->getChambres('gite');
        $actualites = $actualiteRepository->getActualites('all', 6);
        $temoignages = $avisRepository->getAllAvis(8);

        return $this->render('index.html.twig',[
            'action' => 'accueil',
            'header' => $header,
            'hotes' => $hotes,
            'gites' => $gites,
            'actualites' => $actualites,
            'categories' => $this->base->getCategorie(),
            'temoignages' => $temoignages
        ]);
    }

}