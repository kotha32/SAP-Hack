using { com.sap.satinfotech as db } from '../db/schema';

service FileUploadService {
    entity Books as projection on db.Books;
}

annotate FileUploadService.Books with @odata.draft.enabled;