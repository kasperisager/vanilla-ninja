
/*
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
*/


(function() {

  jQuery(function() {
    var activeCrumb, activePage, breadcrumbs, homeCrumb, pager;
    breadcrumbs = $('.Breadcrumbs');
    homeCrumb = breadcrumbs.find('> span:last-child > a');
    activeCrumb = breadcrumbs.find('.Crumb + span:last-child a');
    $(homeCrumb).each(function() {
      $(this).before($(this).html());
      return $(this).remove();
    });
    $(activeCrumb).each(function() {
      $(this).before($(this).html());
      return $(this).remove();
    });
    pager = $('.Pager');
    activePage = pager.find('.Highlight');
    return activePage.replaceWith(function() {
      return $('<span />', {
        html: $(this).html(),
        "class": $(this).attr('class')
      });
    });
  });

}).call(this);
