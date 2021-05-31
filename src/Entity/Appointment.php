<?php

namespace App\Entity;

use App\Repository\AppointmentRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=AppointmentRepository::class)
 */
class Appointment
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    private $DateTime;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $Statue;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $BookedBy;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $BookedFor;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDateTime(): ?int
    {
        return $this->DateTime;
    }

    public function setDateTime(int $DateTime): self
    {
        $this->DateTime = $DateTime;

        return $this;
    }

    public function getStatue(): ?string
    {
        return $this->Statue;
    }

    public function setStatue(string $Statue): self
    {
        $this->Statue = $Statue;

        return $this;
    }

    public function getBookedBy(): ?string
    {
        return $this->BookedBy;
    }

    public function setBookedBy(string $BookedBy): self
    {
        $this->BookedBy = $BookedBy;

        return $this;
    }

    public function getBookedFor(): ?string
    {
        return $this->BookedFor;
    }

    public function setBookedFor(string $BookedFor): self
    {
        $this->BookedFor = $BookedFor;

        return $this;
    }
}
