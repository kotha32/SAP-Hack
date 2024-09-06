using { FileUploadService } from './entity';

annotate FileUploadService.Books with @(
    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Label: 'Title',
            Value: title
        },
        {
            $Type: 'UI.DataField',
            Label: 'Stock',
            Value: stock
        }
    ],
    UI.FieldGroup #BookInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { Label: 'Title', Value: title },
            { Label: 'Stock', Value: stock }
        ]
    },
    UI.Facets: [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BookFacet',
            Label : 'Book Information',
            Target : '@UI.FieldGroup#BookInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'attachmentsFacet',
            Label : 'Attachments',
            Target : 'Attachments/@UI.LineItem',
        }
    ],
);

annotate FileUploadService.Attachments with @(
    UI.LineItem: [
        { Label: 'File Name', Value: fileName },
        { Label: 'Media Type', Value: mediaType },
        { Label: 'Size (Bytes)', Value: size },
        { Label: 'URL', Value: url }
    ],
    UI.FieldGroup #AttachmentsInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            { Label: 'File Name', Value: fileName },
            { Label: 'Media Type', Value: mediaType },
            { Label: 'Size (Bytes)', Value: size },
            { Label: 'URL', Value: url }
        ]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'attachmentInfoFacet',
            Label : 'Attachment Information',
            Target : '@UI.FieldGroup#AttachmentsInformation',
        }
    ],
);
