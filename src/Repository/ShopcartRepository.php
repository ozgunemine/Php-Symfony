<?php

namespace App\Repository;

use App\Entity\Shopcart;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use phpDocumentor\Reflection\Types\Integer;
use Symfony\Bridge\Doctrine\RegistryInterface;

/**
 * @method Shopcart|null find($id, $lockMode = null, $lockVersion = null)
 * @method Shopcart|null findOneBy(array $criteria, array $orderBy = null)
 * @method Shopcart[]    findAll()
 * @method Shopcart[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ShopcartRepository extends ServiceEntityRepository
{
    public function __construct(RegistryInterface $registry)
    {
        parent::__construct($registry, Shopcart::class);
    }

//    /**
//     * @return Shopcart[] Returns an array of Shopcart objects
//     */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Shopcart
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
    public function getUserShopCartTotal($userid): float
    {
        $em = $this->getEntityManager();
        $query = $em->createQuery('
            SELECT sum(p.sprice * s.quantity) as total
                FROM App\Entity\Shopcart s, App\Entity\Admin\Product p
                WHERE s.protuctid = p.id and s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        $result = $query->getResult();

        if ($result[0]["total"]!=null){
            return $result[0]["total"];
        }else {
            return 0;
        }
    }

    public function getUserShopCartCount($userid): Integer
    {
        $em = $this->getEntityManager();
        $query = $em->createQuery('
            SELECT count(s.id) as shopcount
                FROM App\Entity\Shopcart s
                WHERE s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        $result = $query->getResult();

        if ($result[0]["shopcount"]!=null){
            return $result[0]["shopcount"];
        }else {
            return 0;
        }
    }
    public function getUserShopCart($userid): array
    {
        $em = $this->getEntityManager();
        $query = $em->createQuery('
            SELECT p.title,p.sprice, s.quantity,s.protuctid,s.userid, (p.sprice * s.quantity) as total
                FROM App\Entity\Shopcart s, App\Entity\Admin\Product p
                WHERE s.protuctid = p.id and s.userid=:userid
        ')
            ->setParameter('userid',$userid);
        return $query->getResult();

    }
}
