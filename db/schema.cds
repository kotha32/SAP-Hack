namespace com.sap.satinfotech;

using { managed, cuid } from '@sap/cds/common';

entity Books : cuid {
    title       : String;
    stock       : Integer;
    Attachments : Composition of many Attachments
                    on Attachments.book = $self;
}

entity Attachments: cuid, managed{
    book: Association to Books;
    @Core.MediaType: mediaType
    content: LargeBinary;
    @Core.IsMediaType: true
    mediaType: String;
    fileName: String;
    size: Integer;
    url: String;
}