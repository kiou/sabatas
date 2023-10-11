<?php
namespace App\Controller;

use App\Entity\Chambre;
use App\Repository\ChambreRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ChambreController extends AbstractController
{
    public function view(Chambre $id, ChambreRepository $ChambreRepository)
    {
        $chambre = $ChambreRepository->find($id);

        return $this->render('chambre.html.twig',[
            'chambre' => $chambre,
        ]);

    }
}