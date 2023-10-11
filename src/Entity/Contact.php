<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class Contact
{

    #[Assert\NotBlank(message : "Compléter le champ Nom")]
    private ?string $nom = null;

    #[Assert\NotBlank(message : "Compléter le champ Email")]
    #[Assert\Email(
        message: "L'email '{{ value }}' n'est pas une adresse email valide."
    )]
    private ?string $email = null;

    #[Assert\NotBlank(message : "Compléter le champ Arrivée")]
    private ?string $arrivee = null;

    #[Assert\NotBlank(message : "Compléter le champ Depart")]
    private ?string $depart = null;

    #[Assert\NotBlank(message : "Compléter la Catégorie")]
    private ?string $categorie = null;

    #[Assert\NotBlank(message : "Compléter le champ Hébérgement")]
    private ?string $hebergement = null;

    #[Assert\NotBlank(message : "Compléter le champ Message")]
    private ?string $message = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): static
    {
        $this->nom = $nom;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): static
    {
        $this->email = $email;

        return $this;
    }

    public function getArrivee(): ?string
    {
        return $this->arrivee;
    }

    public function setArrivee(string $arrivee): static
    {
        $this->arrivee = $arrivee;

        return $this;
    }
    
    public function getDepart(): ?string
    {
        return $this->depart;
    }

    public function setDepart(string $depart): static
    {
        $this->depart = $depart;

        return $this;
    }

    public function getCategorie(): ?string
    {
        return $this->categorie;
    }

    public function setCategorie(string $categorie): static
    {
        $this->categorie = $categorie;

        return $this;
    }

    public function getHebergement(): ?string
    {
        return $this->hebergement;
    }

    public function setHebergement(string $hebergement): static
    {
        $this->hebergement = $hebergement;

        return $this;
    }

        public function getMessage(): ?string
    {
        return $this->message;
    }

    public function setMessage(string $message): static
    {
        $this->message = $message;

        return $this;
    }
}

