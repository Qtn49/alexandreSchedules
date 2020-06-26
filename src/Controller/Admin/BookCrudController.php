<?php

namespace App\Controller\Admin;

use App\Entity\Book;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Symfony\Component\Security\Core\Security;

class BookCrudController extends AbstractCrudController
{

    private $security;

    public function __construct(Security $security)
    {

        $this->security = $security;

    }

    public static function getEntityFqcn(): string
    {
        return Book::class;
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
            TextField::new('nom', 'Nom'),
            TextField::new('auteur', 'Auteur'),
            TextField::new('lien')->setTemplatePath('admin/book.html.twig'),
        ];
    }

}
