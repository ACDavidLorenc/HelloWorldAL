// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('Hello worldsdad!');
    end;
}

pageextension 50101 VendorListExt extends "Vendor List"
{
    trigger OnOpenPage();
    begin
        Message('Hello world!');
    end;
}