<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190107192717 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE setting (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(100) NOT NULL, description VARCHAR(255) NOT NULL, keywords VARCHAR(255) NOT NULL, company VARCHAR(255) NOT NULL, address VARCHAR(255) NOT NULL, fax VARCHAR(15) NOT NULL, phone VARCHAR(15) NOT NULL, email VARCHAR(50) NOT NULL, smtpserver VARCHAR(100) NOT NULL, smtpemail VARCHAR(50) NOT NULL, smtppassword VARCHAR(20) NOT NULL, smtpport VARCHAR(11) NOT NULL, aboutus LONGTEXT NOT NULL, contact LONGTEXT NOT NULL, referances LONGTEXT NOT NULL, status VARCHAR(10) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE setting');
    }
}
