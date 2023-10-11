<?php

    namespace App\Twig;

    use Twig\Extension\AbstractExtension;
    use Twig\TwigFunction;
    use App\Utilities\BaseClass;

    class AppExtension extends AbstractExtension
    {

        private $base;

        public function __construct(BaseClass $base)
        {
            $this->base = $base;
        }

        public function getFunctions(): array
        {
            return [
                new TwigFunction('get_categorie', [$this, 'getCategorie']),
            ];
        }

        public function getCategorie($key = null)
        {
            $categories = $this->base->getCategorieReverse();

            if ($key === null) {
                return $categories;
            }

            return $categories[$key] ?? null;
        }
    }

?>