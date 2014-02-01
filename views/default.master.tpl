<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        {asset name="Head"}
    </head>
    <body id="{$BodyID}" class="{$BodyClass}">

        <header id="Head">
            <div class="Row">

                <h4 class="SiteTitle">
                    <a href="{link path="home"}">Ninja</a>
                </h4><!-- //SiteTitle -->

                <nav class="SiteMenu">
                    <ul>
                        {profile_link}
                        {inbox_link}
                        {dashboard_link}
                        {signinout_link}
                    </ul>
                </nav><!-- //SiteMenu -->

                <div class="SiteSearch">
                    {searchbox}
                </div><!-- //SiteSearch -->

            </div><!-- //Row -->
        </header><!-- //Head -->

        <section id="Body">
            <div class="Row">

                <nav id="Breadcrumbs" class="Column BreadcrumbsColumn">
                    {breadcrumbs}
                </nav><!-- //Breadcrumbs -->

                <aside id="Panel" class="Column PanelColumn">
                    {asset name="Panel"}
                </aside><!-- //Panel -->

                <section id="Content" class="Column ContentColumn">
                    {asset name="Content"}
                </section><!-- //Content -->

            </div><!-- //Row -->
        </section><!-- //Body -->

        <footer id="Foot">
            <div class="Row">

                <section id="Legal" class="Column LegalColumn">
                    <div class="Copyright">
                        <p>{t c="Copyright"} © {$smarty.now|date_format:"%Y"} <a href="http://your-url/">[Your Name]</a></p>
                    </div>
                    <div class="Credits">
                        <p>{t c="Powered by"} <a href="{vanillaurl}">Vanilla</a> {t c="and"} <a href="https://github.com/kasperisager/vanilla-ninja">Ninja</a></p>
                    </div>
                    {asset name="Foot"}
                </section><!-- //Legal -->

            </div><!-- //Row -->
        </footer><!-- //Foot -->

        {event name="AfterBody"}

    </body>
</html>
