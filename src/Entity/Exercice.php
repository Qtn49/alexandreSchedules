<?php

namespace App\Entity;

use App\Repository\ExerciceRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ExerciceRepository::class)
 */
class Exercice
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
    private $lien;

    /**
     * @ORM\ManyToOne(targetEntity=Day::class, inversedBy="exercices")
     * @ORM\JoinColumn(nullable=false)
     */
    private $day;

    /**
     * @ORM\ManyToOne(targetEntity=Periode::class, inversedBy="exercices")
     * @ORM\JoinColumn(nullable=false)
     */
    private $periode;

    public function __construct()
    {
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

    public function getLien(): ?string
    {
        return $this->lien;
    }

    public function setLien(string $lien): self
    {
        $this->lien = $lien;

        return $this;
    }

    public function getDay(): ?Day
    {
        return $this->day;
    }

    public function setDay(?Day $day): self
    {
        $this->day = $day;

        return $this;
    }

    public function getPeriode(): ?periode
    {
        return $this->periode;
    }

    public function setPeriode(?periode $periode): self
    {
        $this->periode = $periode;

        return $this;
    }

}
