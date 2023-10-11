<?php
namespace App\Controller;

use App\Entity\Contact;
use App\Form\Type\ContactType;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ContactController extends AbstractController
{
    public function index()
    {
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact,[
            'action' => $this->generateUrl('sendcontact')
        ]);

        return $this->render('include/contact.html.twig',[
            'form' => $form->createView()
        ]);
    }

    public function send(
        Request $request,
        MailerInterface $mailer,
    )
    {   
        $contact = new Contact;
        $form = $this->createForm(ContactType::class, $contact);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $email = (new TemplatedEmail())
                ->from('contact@lucpinelli.fr')
                ->to('pinelli.luc@outlook.fr')
                ->subject("Formulaire du site internet")
                ->htmlTemplate('mail/layout.html.twig')
                ->context([
                    'nomdata' => $form->getData()->getNom(),
                    'emaildata' => $form->getData()->getEmail(),
                    'arriveedata' => $form->getData()->getArrivee(),
                    'departdata' => $form->getData()->getDepart(),
                    'categoriedata' => $form->getData()->getCategorie(),
                    'hebergementdata' => $form->getData()->getHebergement(),
                    'messagedata' => $form->getData()->getMessage(),
                ]);

            $mailer->send($email);
            $request->getSession()->getFlashBag()->add('succes', 'Votre message à bien été envoyé');
            
            return $this->redirect($this->generateUrl('app_index'));
        }
    }

}