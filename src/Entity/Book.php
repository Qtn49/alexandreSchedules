<?php

namespace App\Entity;

use App\Repository\BookRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=BookRepository::class)
 */
class Book
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $auteur;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $lien;

    /**
     * @ORM\OneToMany(targetEntity=Day::class, mappedBy="book")
     */
    private $day;

    public function __construct()
    {
        $this->day = new ArrayCollection();
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

    public function getAuteur(): ?string
    {
        return $this->auteur;
    }

    public function setAuteur(string $auteur): self
    {
        $this->auteur = $auteur;

        return $this;
    }

    public function getLien(): ?string
    {
        return $this->lien;
    }

    public function setLien(string $lien): self
    {
        $this->lien = $lien;

        return $this;
    }

    /**
     * @return Collection|day[]
     */
    public function getDay(): Collection
    {
        return $this->day;
    }

    public function addDay(day $day): self
    {
        if (!$this->day->contains($day)) {
            $this->day[] = $day;
            $day->setBook($this);
        }

        return $this;
    }

    public function removeDay(day $day): self
    {
        if ($this->day->contains($day)) {
            $this->day->removeElement($day);
            // set the owning side to null (unless already changed)
            if ($day->getBook() === $this) {
                $day->setBook(null);
            }
        }

        return $this;
    }

}
