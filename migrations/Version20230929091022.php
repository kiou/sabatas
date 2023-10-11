<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230929091022 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE chambre ADD image_chambre5 VARCHAR(255) DEFAULT NULL, ADD image_chambre6 VARCHAR(255) DEFAULT NULL, ADD image_chambre7 VARCHAR(255) DEFAULT NULL, ADD image_chambre8 VARCHAR(255) DEFAULT NULL, ADD image_chambre9 VARCHAR(255) DEFAULT NULL, ADD image_chambre10 VARCHAR(255) DEFAULT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE chambre DROP image_chambre5, DROP image_chambre6, DROP image_chambre7, DROP image_chambre8, DROP image_chambre9, DROP image_chambre10');
    }
}
