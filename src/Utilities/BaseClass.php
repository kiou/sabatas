<?php
namespace App\Utilities;

class BaseClass
{
    /* La liste des catégories pour le choicefield */
    public function getCategorie()
    {
        return [
            'Randonnée' => 'randonne',
            'Loisir' => 'loisir',
            'Autre' => 'autre'
        ];
    }

    public function getCategorieReverse()
    {
        return [
            'randonne' => 'Randonnée',
            'loisir' => 'Loisir',
            'autre' => 'Autre'
        ];
    }
}