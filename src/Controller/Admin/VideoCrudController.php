<?php

namespace App\Controller\Admin;

use App\Entity\Video;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\UrlField;
use Symfony\Component\Form\Extension\Core\Type\DateType;

class VideoCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Video::class;
    }

    public function configureActions(Actions $actions): Actions
    {

        return $actions
            ->setPermissions([Action::NEW => 'ROLE_ADMIN', Action::DELETE => 'ROLE_ADMIN', Action::EDIT => 'ROLE_ADMIN']);

    }

    public function configureFields(string $pageName): iterable
    {

        $id = IdField::new('id')->hideOnForm();
        $day = AssociationField::new('day', 'Day');
        $nom = TextField::new('nom', 'Nom');
        $lien = UrlField::new('lien');

        if (Crud::PAGE_INDEX == $pageName)
            return [$id, $day, $nom, $lien];

        return [
            $id,
            $day,
            $nom,
            $lien,
        ];
    }

}
