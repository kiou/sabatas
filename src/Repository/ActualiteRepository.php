<?php

namespace App\Repository;

use App\Entity\Actualite;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Actualite>
 *
 * @method Actualite|null find($id, $lockMode = null, $lockVersion = null)
 * @method Actualite|null findOneBy(array $criteria, array $orderBy = null)
 * @method Actualite[]    findAll()
 * @method Actualite[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ActualiteRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Actualite::class);
    }

    public function save(Actualite $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Actualite $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function getActualites(string $categorie, $limit = null)
    {
        $qb = $this->createQueryBuilder('a');

        if($categorie != 'all'){
            $qb->andWhere('a.categorie =  :categorie')
               ->setParameter('categorie', $categorie);
        }

        $qb->andWhere('a.isActive =  :isActive')
           ->setParameter('isActive', true);

        if(!is_null($limit)){
            $qb->setMaxResults($limit);
        }
           
        $qb->orderBy('a.id', 'DESC');
   
        return $qb->getQuery()->getResult();
    }

}
