<!-- Start Footer -->

<div class="secfoot">

    <div class="container">
        <div class="row">
            <div class="span6">

                <h2 class="headingfoot">{$lang.ACERCA_DE_NOSOTROS}</h2>

                <ul class="unstyled">

                    <li>
                        <p class="foottext"> RHR Real Estate, es una empresa de servicio inmobiliario con una experiencia de 35 años en el mercado, especializándose y adaptándose a los cambios y necesidades de sus clientes. Cuenta con  personal calificado para el servicio exclusivo de cada cliente, basándose en la búsqueda del inmueble acorde a  intereses, gustos y deseos del que llega a nuestra empresa. Gestionamos en forma personalizada las operaciones en  propiedades particulares, para empresas o inversores.</p>
                        <p class="foottext"><a href="/{$uri_prefix}?uri=acerca-de-nosotros.html">{$lang.CONTINUAR_LEYENDO}</a></p>
                    </li>

                </ul>

            </div>

            <div class="span6">

                <h2 class="headingfoot">{$lang.CONTACTENOS}</h2>

                <ul class="unstyled">

                    <li class="foot_list">
                        <span class="foot_contact"><i class="icon-envelope icon iconsin"></i><a href="mailto:info@rhrrealestate.com.ar"> info@rhrrealestate.com.ar</a></span>
                    </li>

                    <li  class="foot_list">
                        <span class="foot_contact"><i class="icon-user icon iconsin"></i>Tél.: +54.011-4952.7623</span>
                    </li>

                    <li  class="foot_list">
                        <span class="foot_contact"><i class="icon-user icon iconsin"></i>Cel.: +54.011-5815.4406</span>
                    </li>

                    <li class="foot_list">

                        <span class="foot_contact"><i class="icon-map-marker icon iconsin"></i>
                        Av Rivadavia 2151, Ciudad Autonoma de Buenos Aires, Buenos Aires, Argentina </span>
                    </li>

                    <li class="foot_logo">
                        <a class="btnlogo"></a>    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="footblock">
    <div class="container">
        <div class="row">
            <div class="span12">
                <p class="foot_copy">&copy; 2012 Realty Inc.<span style="font-size:11px;"> - All Rights Reserved.</span> </p>
            </div>
        </div>
    </div>
</div>

<!-- End Footer -->

<!-- Le javascript
================================================== -->
{foreach from=$site_footer_js item=footer_js}
    <script type="text/javascript" src="{$assets_path_js}{$footer_js}"></script>
{/foreach}
<!-- Placed at the end of the document so the pages load faster -->

<script src="{$assets_path_js}bootstrap.js"></script>
</body>
</html>