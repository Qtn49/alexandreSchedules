<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200621220003 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book DROP FOREIGN KEY FK_CBE5A3319C24126');
        $this->addSql('DROP INDEX IDX_CBE5A3319C24126 ON book');
        $this->addSql('ALTER TABLE book DROP day_id');
        $this->addSql('ALTER TABLE day ADD book_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE day ADD CONSTRAINT FK_E5A0299016A2B381 FOREIGN KEY (book_id) REFERENCES book (id)');
        $this->addSql('CREATE INDEX IDX_E5A0299016A2B381 ON day (book_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE book ADD day_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE book ADD CONSTRAINT FK_CBE5A3319C24126 FOREIGN KEY (day_id) REFERENCES day (id)');
        $this->addSql('CREATE INDEX IDX_CBE5A3319C24126 ON book (day_id)');
        $this->addSql('ALTER TABLE day DROP FOREIGN KEY FK_E5A0299016A2B381');
        $this->addSql('DROP INDEX IDX_E5A0299016A2B381 ON day');
        $this->addSql('ALTER TABLE day DROP book_id');
    }
}
