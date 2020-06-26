<?php

namespace App\Controller\Admin;

use App\Entity\Day;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class DayCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Day::class;
    }

    public function configureActions(Actions $actions): Actions
    {

        return $actions
            ->setPermissions([Action::NEW => 'ROLE_ADMIN', Action::DELETE => 'ROLE_ADMIN', Action::EDIT => 'ROLE_ADMIN']);

    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')->hideOnForm(),
            DateField::new('date', 'Date'),
            AssociationField::new('book', 'Book'),
        ];
    }

}
