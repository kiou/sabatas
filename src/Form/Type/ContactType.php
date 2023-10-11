<?php

namespace App\Form\Type;

use App\Entity\Contact;
use App\Utilities\BaseClass;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ContactType extends AbstractType
{
    private $base;

    public function __construct()
    {
        $this->base = new BaseClass();
    }

    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class,[
                'label' => 'Nom *',
                'attr' => [ 'placeholder' => 'votre nom complet'],
            ])
            ->add('email', EmailType::class,[
                'label' => 'E-mail *',
                'attr' => [ 'placeholder' => 'votre email'],
            ])
            ->add('arrivee', TextType::class,[
                'label' => 'Date de votre arrivée *',
                'attr' => [ 'placeholder' => 'JJ/MM/AAAA']
            ])
            ->add('depart', TextType::class,[
                'label' => 'Date de votre départ *',
                'attr' => [ 'placeholder' => 'JJ/MM/AAAA']
            ])
            ->add('categorie', ChoiceType::class, [
                'label' => 'Catégorie *',
                'choices'  => [
                    'Choisir la catégorie' => null,
                    'Gîte' => 'gite',
                    'Chambre d\'hôte' => 'hote'
                ]
            ])
            ->add('hebergement', TextType::class,[
                'label' => 'Hebergement *',
                'attr' => [ 'placeholder' => 'type d\'hebergement / nom de la chambre'],
            ])
            ->add('message', TextareaType::class,[
                'label' => 'Message *',
                'attr' => [ 'placeholder' => 'dites nous bonjour'],
            ])
            ->add('Envoyer', SubmitType::class,[
                'label' => 'envoyer',
                'attr' => ['class' => 'btn btnSubmit']
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Contact::class
        ]);
    }
}
