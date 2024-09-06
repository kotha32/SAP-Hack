sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/satinfotech/books/test/integration/FirstJourney',
		'com/sap/satinfotech/books/test/integration/pages/BooksList',
		'com/sap/satinfotech/books/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/satinfotech/books') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);