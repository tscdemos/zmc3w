using { guitarstoreSrv } from '../srv/service.cds';

annotate guitarstoreSrv.Product with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarstoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @cds.odata.valuelist;
annotate guitarstoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productInformation } };
annotate guitarstoreSrv.Product with {
  ID @Common.Text: { $value: productInformation, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Product with @UI.Identification: [{ Value: productInformation }];
annotate guitarstoreSrv.Product with {
  productInformation @title: 'Product Information';
  targetAudiencePitch @title: 'Target Audience Pitch';
  discount @title: 'Discount'
};

annotate guitarstoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productInformation },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Value: discount },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouseStock_ID }
];

annotate guitarstoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productInformation },
    { $Type: 'UI.DataField', Value: targetAudiencePitch },
    { $Type: 'UI.DataField', Value: discount },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouseStock_ID }
  ]
};

annotate guitarstoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarstoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: stock } };
annotate guitarstoreSrv.Warehouse with {
  ID @Common.Text: { $value: stock, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarstoreSrv.Warehouse with @UI.Identification: [{ Value: stock }];
annotate guitarstoreSrv.Warehouse with {
  stock @title: 'Stock'
};

annotate guitarstoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: stock }
];

annotate guitarstoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: stock }
  ]
};

annotate guitarstoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

