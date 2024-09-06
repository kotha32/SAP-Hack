sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'books/test/integration/FirstJourney',
		'books/test/integration/pages/BooksList',
		'books/test/integration/pages/BooksObjectPage',
		'books/test/integration/pages/AttachmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage, AttachmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('books') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage,
					onTheAttachmentsObjectPage: AttachmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);