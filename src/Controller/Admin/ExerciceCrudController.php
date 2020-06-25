<?php

namespace App\Controller\Admin;

use App\Entity\Exercice;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\UrlField;

class ExerciceCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Exercice::class;
    }


    public function configureFields(string $pageName): iterable
    {

        $id = IdField::new('id')->hideOnForm();
        $day = AssociationField::new('day', 'Day');
        $periode = AssociationField::new('periode', 'Période');
        $nom = TextField::new('nom', 'Nom');
        $lien = UrlField::new('lien', 'Lien');

        if (Crud::PAGE_INDEX == $pageName)
            return [$id, $day, $periode, $nom, $lien];

        return [
            FormField::addPanel('Période'),
            $day, $periode,

            FormField::addPanel('Données'),
            $nom, $lien,

        ];
    }

}
