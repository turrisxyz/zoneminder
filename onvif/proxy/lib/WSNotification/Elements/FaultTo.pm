
package WSNotification::Elements::FaultTo;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://www.w3.org/2005/08/addressing' }

__PACKAGE__->__set_name('FaultTo');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();
use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    WSNotification::Types::EndpointReferenceType
);

}

1;


=pod

=head1 NAME

WSNotification::Elements::FaultTo

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
FaultTo from the namespace http://www.w3.org/2005/08/addressing.







=head1 METHODS

=head2 new

 my $element = WSNotification::Elements::FaultTo->new($data);

Constructor. The following data structure may be passed to new():

 { # WSNotification::Types::EndpointReferenceType
   Address =>  { value => $some_value },
   ReferenceParameters =>  { # WSNotification::Types::ReferenceParametersType
   },
   Metadata =>  { # WSNotification::Types::MetadataType
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

