###
Ninja

Copyright © 2013 Kasper K. Isager

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
IN THE SOFTWARE.
###

jQuery ->

    # Replace active link in breadcrumbs with span
    breadcrumbs = $('.Breadcrumbs')
    homeCrumb = breadcrumbs.find('> span:last-child > a')
    activeCrumb = breadcrumbs.find('.Crumb + span:last-child a')
    $(homeCrumb).each ->
        $(this).before($(this).html())
        $(this).remove()
    $(activeCrumb).each ->
        $(this).before($(this).html())
        $(this).remove()

    # Replace active link in pager with span
    pager = $('.Pager')
    activePage = pager.find('.Highlight')
    activePage.replaceWith ->
        $ '<span />',
            html: $(this).html()
            class: $(this).attr('class')
