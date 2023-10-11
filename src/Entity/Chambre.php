<?php

namespace App\Entity;

use App\Repository\ChambreRepository;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\DBAL\Types\Types;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Table(name : "chambre")]
#[ORM\HasLifecycleCallbacks]
#[ORM\Entity(repositoryClass: ChambreRepository::class)]
class Chambre
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type : "integer")]
    private ?int $id = null;

    #[ORM\Column(type : "datetimetz")]
    private $created;

    #[ORM\Column(type : "datetimetz", nullable:true)]
    private $changed;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ nom")]
    private ?string $nom = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ slug")]
    private ?string $slug = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ prix")]
    private ?string $prix = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ taille")]
    private ?string $taille = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ lit")]
    private ?string $lit = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ capacité")]
    private ?string $capacite = null;

    #[ORM\Column(type : "string", length : 255)]
    #[Assert\NotBlank(message : "Compléter le champ type")]
    private ?string $type = null;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $vue;

    #[ORM\Column(type : "text")]
    #[Assert\NotBlank(message : "Compléter le champ contenu")]
    private ?string $contenu = null;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageContenu1;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageContenu2;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre1;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre2;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre3;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre4;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre5;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre6;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre7;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre8;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre9;

    #[ORM\Column(type : "string", length : 255, nullable:true)]
    private $imageChambre10;

    #[ORM\Column(name : "is_active", type : "boolean")]
    private $isActive;

    public function __construct()
    {
        $this->created = new \DateTime();
        $this->isActive = true;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getPrix(): ?string
    {
        return $this->prix;
    }

    public function setPrix(string $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getTaille(): ?string
    {
        return $this->taille;
    }

    public function setTaille(string $taille): self
    {
        $this->taille = $taille;

        return $this;
    }

    public function getLit(): ?string
    {
        return $this->lit;
    }

    public function setLit(string $lit): self
    {
        $this->lit = $lit;

        return $this;
    }

    public function getCapacite(): ?string
    {
        return $this->capacite;
    }

    public function setCapacite(string $capacite): self
    {
        $this->capacite = $capacite;

        return $this;
    }

    public function getCreated(): ?\DateTimeInterface
    {
        return $this->created;
    }

    public function setCreated(\DateTimeInterface $created): self
    {
        $this->created = $created;

        return $this;
    }

    public function getChanged(): ?\DateTimeInterface
    {
        return $this->changed;
    }

    public function setChanged(?\DateTimeInterface $changed): self
    {
        $this->changed = $changed;

        return $this;
    }

    #[ORM\PreUpdate()]
    public function preChanged()
    {
        $this->changed = new \DateTime();
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function isIsActive(): ?bool
    {
        return $this->isActive;
    }

    public function setIsActive(bool $isActive): self
    {
        $this->isActive = $isActive;

        return $this;
    }

    public function getContenu(): ?string
    {
        return $this->contenu;
    }

    public function setContenu(string $contenu): self
    {
        $this->contenu = $contenu;

        return $this;
    }

    public function getType(): ?string
    {
        return $this->type;
    }

    public function setType(string $type): self
    {
        $this->type = $type;

        return $this;
    }

    public function getImageContenu1(): ?string
    {
        return $this->imageContenu1;
    }

    public function setImageContenu1(?string $imageContenu1): self
    {
        $this->imageContenu1 = $imageContenu1;

        return $this;
    }

    public function getImageContenu2(): ?string
    {
        return $this->imageContenu2;
    }

    public function setImageContenu2(?string $imageContenu2): self
    {
        $this->imageContenu2 = $imageContenu2;

        return $this;
    }

    public function getImageChambre1(): ?string
    {
        return $this->imageChambre1;
    }

    public function setImageChambre1(?string $imageChambre1): self
    {
        $this->imageChambre1 = $imageChambre1;

        return $this;
    }

    public function getImageChambre2(): ?string
    {
        return $this->imageChambre2;
    }

    public function setImageChambre2(?string $imageChambre2): self
    {
        $this->imageChambre2 = $imageChambre2;

        return $this;
    }

    public function getImageChambre3(): ?string
    {
        return $this->imageChambre3;
    }

    public function setImageChambre3(?string $imageChambre3): self
    {
        $this->imageChambre3 = $imageChambre3;

        return $this;
    }

    public function getImageChambre4(): ?string
    {
        return $this->imageChambre4;
    }

    public function setImageChambre4(?string $imageChambre4): self
    {
        $this->imageChambre4 = $imageChambre4;

        return $this;
    }

    public function getVue(): ?string
    {
        return $this->vue;
    }

    public function setVue(?string $vue): self
    {
        $this->vue = $vue;

        return $this;
    }

    public function getImageChambre5(): ?string
    {
        return $this->imageChambre5;
    }

    public function setImageChambre5(?string $imageChambre5): self
    {
        $this->imageChambre5 = $imageChambre5;

        return $this;
    }

    public function getImageChambre6(): ?string
    {
        return $this->imageChambre6;
    }

    public function setImageChambre6(?string $imageChambre6): self
    {
        $this->imageChambre6 = $imageChambre6;

        return $this;
    }

    public function getImageChambre7(): ?string
    {
        return $this->imageChambre7;
    }

    public function setImageChambre7(?string $imageChambre7): self
    {
        $this->imageChambre7 = $imageChambre7;

        return $this;
    }

    public function getImageChambre8(): ?string
    {
        return $this->imageChambre8;
    }

    public function setImageChambre8(?string $imageChambre8): self
    {
        $this->imageChambre8 = $imageChambre8;

        return $this;
    }

    public function getImageChambre9(): ?string
    {
        return $this->imageChambre9;
    }

    public function setImageChambre9(?string $imageChambre9): self
    {
        $this->imageChambre9 = $imageChambre9;

        return $this;
    }

    public function getImageChambre10(): ?string
    {
        return $this->imageChambre10;
    }

    public function setImageChambre10(?string $imageChambre10): self
    {
        $this->imageChambre10 = $imageChambre10;

        return $this;
    }
}
