<?php

namespace App\Controller\Admin;

use Imagine\Image\Box;
use App\Entity\Chambre;
use Imagine\Gd\Imagine;
use App\Utilities\Upload;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Filters;
use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;
use EasyCorp\Bundle\EasyAdminBundle\Field\SlugField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ChambreCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Chambre::class;
    }

    public function configureFilters(Filters $filters): Filters
    {
        return $filters
            ->add('nom')
            ->add('type')
        ;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Chambre')
            ->setEntityLabelInPlural('Chambres')
            ->setDefaultSort(['id' => 'DESC'])
            ->addFormTheme('@FOSCKEditor/Form/ckeditor_widget.html.twig');
        ;
    }

    function generateUniqueTimestamp() {
        $timestamp = microtime(true);
        return $timestamp;
    }

    public function configureFields(string $pageName): iterable
    {
        yield DateTimeField::new('created','Création')
            ->setFormat('long', 'none')
            ->onlyOnIndex();
        yield TextField::new('nom', 'Nom de la chambre');
        yield SlugField::new('slug', 'URL automatique')
            ->hideOnIndex()
            ->setTargetFieldName('nom');
        yield ChoiceField::new('type','Type de chambre')
            ->hideOnIndex()
            ->autocomplete()->setChoices([
                'Gite' => 'gite',
                'Chambre d\'hote' => 'hote'
            ]);
        yield FormField::addPanel('Images de la chambre');
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageChambre1','1ére Image')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageChambre2','2éme Image')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );
            
                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageChambre3','3éme Image')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageChambre4','4éme Image')
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre5','5éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre6','6éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre7','7éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre8','8éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre9','9éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield ImageField::new('imageChambre10','10éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $imagine->open($file)
                        ->save($this->getUploadRootDir().'lightbox/'.$image);

                $size = new Box(1920,800);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

                $size = new Box(870,580);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'miniature/'.$image);

        });
        yield FormField::addPanel('Informations');
        yield TextField::new('taille', 'Taille de la chambre en m²')->hideOnIndex();
        yield TextField::new('lit', 'nombre de lit(s)')->hideOnIndex();
        yield TextField::new('capacite', 'Capacité d\'hebergement')->hideOnIndex();
        yield TextField::new('prix', 'Prix');
        yield TextField::new('vue', 'Vue')->hideOnIndex();
        yield FormField::addPanel('En tête sur la chambre');
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageContenu1','1ére image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $size = new Box(369,396);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

        });
        $timestamp = $this->generateUniqueTimestamp();
        yield ImageField::new('imageContenu2','2éme Image')
            ->hideOnIndex()
            ->setUploadDir('public/img/upload/')
            ->setBasePath('img/upload/')
            ->setUploadedFileNamePattern('[slug]-'.$timestamp.'.[extension]')
            ->setFormTypeOption('upload_new', function(UploadedFile $file) use ($timestamp){
                $upload = new Upload();

                $image = $upload->createName(
                    $file->getClientOriginalName(),
                    $this->getUploadRootDir().'/',
                    $timestamp
                );

                $imagine = new Imagine();
                $size = new Box(270,396);
                $imagine->open($file)
                        ->thumbnail($size, 'outbound')
                        ->save($this->getUploadRootDir().'upload/'.$image);

        });
        yield TextEditorField::new('contenu','Contenu')
            ->hideOnIndex()
            ->setColumns('col-sm-12 col-lg-12 col-xxl-12')
            ->setFormType(CKEditorType::class);
        yield BooleanField::new('isActive','Actif')->onlyOnIndex();
    }

    public function getUploadRootDir()
    {
        return __DIR__.'/../../../public/img/';
    }

}
