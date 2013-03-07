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
                    {home_link}
                    {categories_link}
                    {discussions_link}
                    {activity_link}
                    {custom_menu}
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
                {*{module name="MeModule"}*}
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
                {asset name="Foot"}
            </section><!-- //Legal -->

        </div><!-- //Row -->
    </footer><!-- //Foot -->

    {event name="AfterBody"}
    
</body>
</html>